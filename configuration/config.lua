Config = {}

-- Language file from locales/ to use, such as 'en'.
Config.Locale = 'en'

---------------------------------------------------------------------------
-- Seats and speed

-- Who can shoot from a vehicle, and up to what speed. Players over the limit can't aim or fire until
-- the vehicle slows down. maxSpeed = 0 means no limit; allowed = false means never from that seat.
-- 'front' is the front passenger seat, 'rear' every seat behind it.
Config.Seats = {
    driver = { allowed = true, maxSpeed = 20 },
    front  = { allowed = true, maxSpeed = 60 },
    rear   = { allowed = true, maxSpeed = 60 },
}

-- The unit for maxSpeed: 'mph' or 'kmh'.
Config.SpeedUnit = 'mph'

-- Seconds after getting into a vehicle before the player can shoot from it. 0 for none.
Config.EnterDelaySeconds = 1

---------------------------------------------------------------------------
-- Weapons

-- Which weapons can be used from a vehicle. GTA already limits drive-bys to weapons that have a
-- drive-by animation (mostly pistols and SMGs); this narrows it further.
--   mode = 'all'    any weapon GTA allows
--   mode = 'allow'  only the weapons and groups in list
--   mode = 'block'  any weapon GTA allows, except those in list
-- list takes weapon names ('WEAPON_MICROSMG') and weapon groups ('GROUP_SMG'). The groups are
-- GROUP_PISTOL, GROUP_SMG, GROUP_RIFLE, GROUP_SHOTGUN, GROUP_MG, GROUP_SNIPER, GROUP_HEAVY,
-- GROUP_THROWN and GROUP_MELEE. Add-on weapons work by their own name and group.
Config.Weapons = {
    mode = 'all',
    list = {
        -- 'GROUP_SMG',
        -- 'WEAPON_MICROSMG',
    },
}

---------------------------------------------------------------------------
-- Vehicles

Config.Vehicles = {
    -- Vehicle classes nobody can shoot from. Use {} for none.
    -- 8 motorcycles · 13 cycles · 14 boats · 15 helicopters · 16 planes · 18 emergency
    -- The full list: https://docs.fivem.net/natives/?_0x29439776AAA00A62
    blockClasses = {},

    -- Vehicles nobody can shoot from, by spawn name (the name you'd use to spawn it). Add-on vehicles
    -- work the same way.
    blockModels = {
        -- 'bus',
    },

    -- Vehicles that are never blocked by blockClasses, such as one helicopter in a blocked class.
    allowModels = {
        -- 'polmav',
    },
}

---------------------------------------------------------------------------
-- Who the rules don't apply to

Config.Exempt = {
    -- Players with this ACE permission can always shoot from vehicles, granted in server.cfg:
    --     add_ace group.admin pigeon-driveby-rules.exempt allow
    -- '' turns ACE exemptions off.
    ace = 'pigeon-driveby-rules.exempt',

    -- Jobs whose players can always shoot from vehicles, with Qbox, QBCore or ESX. Use {} for none.
    jobs = {
        -- 'police',
        -- 'sheriff',
    },

    -- Only while on duty. ESX versions without a duty system count everyone as on duty.
    onDutyOnly = true,
}

-- How often, in seconds, exemptions are checked again, as well as whenever a player's job or duty
-- changes. This catches ACE permissions added while the server runs.
Config.ExemptRefreshSeconds = 60

---------------------------------------------------------------------------
-- Camera

-- Switch to first person while the player shoots from a vehicle, and back to their own view after.
Config.FirstPerson = false

---------------------------------------------------------------------------
-- Messages

-- Tell the player why they can't shoot when they try to aim. At most once every
-- Config.MessageCooldown seconds.
Config.ShowMessage = true
Config.MessageCooldown = 4

-- How the message is shown.
-- 'auto' uses ox_lib notifications if ox_lib is running, otherwise GTA's notification feed.
-- 'ox_lib' or 'gta' to force one.
Config.Notifications = 'auto'

-- Update checks are controlled in server.cfg for every Pigeon Studios resource at once:
--     set pigeon_update_check "on"      (default)  |  "quiet"  |  "off"
