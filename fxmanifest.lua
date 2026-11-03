fx_version 'cerulean'
game 'gta5'
lua54 'yes'

name 'pigeon-driveby-rules'
author 'Pigeon Studios'
description 'Sets who can shoot from vehicles, from which seats, up to what speed, with which weapons and in which vehicles.'
version '1.0.0'
repository 'https://github.com/pigeon-studios-uk/pigeon-driveby-rules'

-- Pigeon Studios version registry entry, read by server/version_check.lua.
pigeon_slug 'pigeon-driveby-rules'

shared_scripts {
    'configuration/config.lua',
    'shared/rules.lua',
}

client_scripts {
    'locales/*.lua',
    'client/main.lua',
}

server_scripts {
    'server/bridge.lua',
    'server/main.lua',
    'server/version_check.lua',
}
