--[[
    Pigeon Driveby Rules: server.

    Works out which players the rules don't apply to (Config.Exempt, or the SetExempt export) and tells
    their game through a state bag. It's checked when a player joins, when their character loads,
    when their job or duty changes, and every Config.ExemptRefreshSeconds.
]]

local STATE_KEY = 'pigeonDrivebyExempt'

local jobs = {}
local overrides = {}       -- [source] = true or false, set by other resources through SetExempt

for _, name in ipairs(Config.Exempt and Config.Exempt.jobs or {}) do
    jobs[name] = true
end

local function isExempt(source)
    if overrides[source] ~= nil then return overrides[source] end

    local ace = Config.Exempt and Config.Exempt.ace or ''
    if ace ~= '' and IsPlayerAceAllowed(source, ace) then return true end

    if next(jobs) then
        local job = Bridge.GetJob(source)
        if job and jobs[job.name] and (job.onDuty or not Config.Exempt.onDutyOnly) then return true end
    end
    return false
end

local function refresh(source)
    source = tonumber(source)
    if not source or source <= 0 or not GetPlayerName(source) then return end
    local exempt = isExempt(source)
    local state = Player(source).state
    if state[STATE_KEY] ~= exempt then state:set(STATE_KEY, exempt, true) end
end

local function refreshAll()
    for _, id in ipairs(GetPlayers()) do refresh(id) end
end

---------------------------------------------------------------------------
-- When to check

AddEventHandler('playerJoining', function()
    refresh(source)
end)

AddEventHandler('playerDropped', function()
    overrides[source] = nil
end)

-- Qbox and QBCore.
AddEventHandler('QBCore:Server:PlayerLoaded', function(player)
    if player and player.PlayerData then refresh(player.PlayerData.source) end
end)
AddEventHandler('QBCore:Server:OnJobUpdate', function(id) refresh(id) end)
AddEventHandler('QBCore:Server:SetDuty', function(id) refresh(id) end)

-- ESX.
AddEventHandler('esx:playerLoaded', function(id) refresh(id) end)
AddEventHandler('esx:setJob', function(id) refresh(id) end)

CreateThread(function()
    refreshAll()   -- players already on the server when the resource (re)starts
    while true do
        Wait(math.max(10, tonumber(Config.ExemptRefreshSeconds) or 60) * 1000)
        refreshAll()
    end
end)

---------------------------------------------------------------------------
-- Exports

--[[
    Makes a player exempt from every rule (true), subject to every rule even if Config.Exempt says
    otherwise (false), or back to Config.Exempt (nil). Lasts until they leave the server.
        exports['pigeon-driveby-rules']:SetExempt(source, true)
]]
exports('SetExempt', function(id, exempt)
    id = tonumber(id)
    if not id then return end
    if exempt == nil then overrides[id] = nil else overrides[id] = exempt == true end
    refresh(id)
end)

--- True if the rules don't apply to this player right now.
exports('IsExempt', function(id)
    id = tonumber(id)
    return id ~= nil and isExempt(id)
end)
