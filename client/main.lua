--[[
    Pigeon Driveby Rules: client.

    While the player is in a vehicle, it checks every frame whether they may shoot from it (see
    shared/rules.lua) and turns GTA's drive-by on or off to match. Outside vehicles it only checks
    twice a second. When a rule stops them, trying to aim shows why.
]]

local RESOURCE = GetCurrentResourceName()
local UNARMED = joaat('WEAPON_UNARMED')
local IDLE_MS = 500                            -- how often to check when not in a vehicle
local FIRST_PERSON = 4                         -- the first-person camera view mode
local AIM_CONTROLS = { 68, 91 }                -- INPUT_VEH_AIM (driver), INPUT_VEH_PASSENGER_AIM
local SPEED_FACTOR = { mph = 2.236936, kmh = 3.6 }   -- from metres per second

local strings = Locales[Config.Locale] or Locales.en
local prepared = DrivebyRules.prepare(Config, joaat)
local unitFactor = SPEED_FACTOR[Config.SpeedUnit] or SPEED_FACTOR.mph
local unitLabel = Config.SpeedUnit == 'kmh' and 'km/h' or 'mph'

local driveByBlocked = false
local currentVehicle, enteredAt = 0, 0
local lastMessage = -math.huge
local savedView                                -- { context, mode } while first person is forced

local function t(key, values)
    local text = strings[key] or Locales.en[key] or key
    return (text:gsub('{(%w+)}', function(name)
        local value = values and values[name]
        return value ~= nil and tostring(value) or '{' .. name .. '}'
    end))
end

local function notify(text)
    local mode = Config.Notifications
    if mode == 'ox_lib' or (mode == 'auto' and GetResourceState('ox_lib') == 'started') then
        TriggerEvent('ox_lib:notify', { title = strings.title, description = text, type = 'error' })
    else
        BeginTextCommandThefeedPost('STRING')
        AddTextComponentSubstringPlayerName(text)
        EndTextCommandThefeedPostTicker(false, false)
    end
end

local function setDriveBy(allowed)
    SetPlayerCanDoDriveBy(PlayerId(), allowed)
    driveByBlocked = not allowed
end

--- 'driver', 'front' or 'rear'. Empty seats are skipped with IsVehicleSeatFree, because asking who's
--- in an empty seat of a parked car can make GTA put a random ped in it.
local function seatOf(vehicle, ped)
    if GetPedInVehicleSeat(vehicle, -1) == ped then return 'driver' end
    local seats = GetVehicleModelNumberOfSeats(GetEntityModel(vehicle))
    for seat = 0, seats - 2 do
        if not IsVehicleSeatFree(vehicle, seat) and GetPedInVehicleSeat(vehicle, seat) == ped then
            return seat == 0 and 'front' or 'rear'
        end
    end
    return 'rear'
end

local function aiming()
    for _, control in ipairs(AIM_CONTROLS) do
        if IsControlPressed(0, control) or IsDisabledControlPressed(0, control) then return true end
    end
    return false
end

local function restoreView()
    if savedView then
        SetCamViewModeForContext(savedView.context, savedView.mode)
        savedView = nil
    end
end

local function forceFirstPerson()
    local context = GetCamActiveViewModeContext()
    if not savedView then
        savedView = { context = context, mode = GetCamViewModeForContext(context) }
    end
    if GetCamViewModeForContext(context) ~= FIRST_PERSON then
        SetCamViewModeForContext(context, FIRST_PERSON)
    end
end

local function explain(reason, details)
    if not Config.ShowMessage then return end
    local now = GetGameTimer()
    if now - lastMessage < (tonumber(Config.MessageCooldown) or 4) * 1000 then return end
    lastMessage = now
    notify(t('blocked_' .. reason, { limit = details and details.limit, unit = unitLabel }))
end

local function leftVehicle()
    if driveByBlocked then setDriveBy(true) end
    restoreView()
    currentVehicle = 0
end

CreateThread(function()
    while true do
        local ped = PlayerPedId()
        local vehicle = IsPedInAnyVehicle(ped, false) and GetVehiclePedIsIn(ped, false) or 0

        if vehicle == 0 then
            if currentVehicle ~= 0 then leftVehicle() end
            Wait(IDLE_MS)
        else
            if vehicle ~= currentVehicle then
                currentVehicle = vehicle
                enteredAt = GetGameTimer()
            end

            local weapon = GetSelectedPedWeapon(ped)
            local reason, details = DrivebyRules.check(prepared, {
                seat = seatOf(vehicle, ped),
                speed = GetEntitySpeed(vehicle) * unitFactor,
                weapon = weapon,
                group = GetWeapontypeGroup(weapon),
                unarmed = weapon == UNARMED,
                model = GetEntityModel(vehicle),
                class = GetVehicleClass(vehicle),
                inVehicleMs = GetGameTimer() - enteredAt,
                exempt = LocalPlayer.state.pigeonDrivebyExempt == true,
            })

            if reason then
                if not driveByBlocked then setDriveBy(false) end
                restoreView()
                if aiming() then explain(reason, details) end
            else
                if driveByBlocked then setDriveBy(true) end
                if Config.FirstPerson then
                    if IsPedDoingDriveby(ped) then forceFirstPerson() else restoreView() end
                end
            end
            Wait(0)
        end
    end
end)

AddEventHandler('onResourceStop', function(resource)
    if resource ~= RESOURCE then return end
    if driveByBlocked then SetPlayerCanDoDriveBy(PlayerId(), true) end
    restoreView()
end)
