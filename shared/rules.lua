--[[
    Pigeon Driveby Rules: the rules.

    Decides whether the player may shoot from the vehicle they're in right now. Nothing here calls a
    native, so the rules can be tested outside the game: client/main.lua gathers the facts and asks.
]]

DrivebyRules = {}

local GROUP_PREFIX = 'GROUP_'

--- Turns the config's names into hash sets once. `hash` is joaat in the game, and a stand-in in tests.
function DrivebyRules.prepare(config, hash)
    local prepared = { weapons = {}, groups = {}, blockClasses = {}, blockModels = {}, allowModels = {} }

    local weapons = config.Weapons or {}
    prepared.weaponMode = weapons.mode or 'all'
    for _, name in ipairs(weapons.list or {}) do
        name = tostring(name):upper()
        if name:sub(1, #GROUP_PREFIX) == GROUP_PREFIX then
            prepared.groups[hash(name)] = true
        else
            prepared.weapons[hash(name)] = true
        end
    end

    local vehicles = config.Vehicles or {}
    for _, class in ipairs(vehicles.blockClasses or {}) do prepared.blockClasses[tonumber(class)] = true end
    for _, model in ipairs(vehicles.blockModels or {}) do prepared.blockModels[hash(model)] = true end
    for _, model in ipairs(vehicles.allowModels or {}) do prepared.allowModels[hash(model)] = true end

    prepared.seats = config.Seats or {}
    prepared.enterDelay = (tonumber(config.EnterDelaySeconds) or 0) * 1000
    return prepared
end

--- True if this weapon may be used, by its hash and its group's hash.
local function weaponAllowed(prepared, weapon, group)
    local listed = prepared.weapons[weapon] or (group and prepared.groups[group]) or false
    if prepared.weaponMode == 'allow' then return listed end
    if prepared.weaponMode == 'block' then return not listed end
    return true
end

--[[
    Returns nil if the player may shoot, or the reason they may not, with details for the message:
        'vehicle' · 'seat' · 'speed', { limit } · 'weapon' · 'settling'

    facts:
        seat = 'driver' | 'front' | 'rear'
        speed = the vehicle's speed in the config's unit
        weapon, group = the selected weapon's hash and its group's hash
        unarmed = true when nothing is selected (only the middle finger, which is never stopped)
        model, class = the vehicle's model hash and class number
        inVehicleMs = how long the player has been in this vehicle
        exempt = true when the player is exempt from every rule
]]
function DrivebyRules.check(prepared, facts)
    if facts.exempt or facts.unarmed then return nil end

    if not prepared.allowModels[facts.model] then
        if prepared.blockModels[facts.model] or prepared.blockClasses[facts.class] then return 'vehicle' end
    end

    local seat = prepared.seats[facts.seat]
    if seat and seat.allowed == false then return 'seat' end

    local limit = seat and tonumber(seat.maxSpeed) or 0
    if limit > 0 and facts.speed > limit then return 'speed', { limit = limit } end

    if not weaponAllowed(prepared, facts.weapon, facts.group) then return 'weapon' end

    if prepared.enterDelay > 0 and facts.inVehicleMs < prepared.enterDelay then return 'settling' end

    return nil
end
