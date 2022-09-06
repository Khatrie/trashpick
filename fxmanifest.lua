fx_version 'cerulean'
game 'gta5'

description 'trashpick'
version '1.0.0'

shared_scripts {
    '@qb-core/shared/locale.lua',
    'config.lua'
}

client_script {
    '@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/CircleZone.lua',
    'client/main.lua'
}
server_scripts {
    'server/main.lua'
}

lua54 'yes'
