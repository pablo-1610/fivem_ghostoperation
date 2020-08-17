fx_version 'adamant'
game 'gta5'

resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

version '1.0.0'

client_scripts {
    'config/main.lua',
    
    'client/camera.lua',
    'client/functions.lua',

    'modules/client/quests/quests.lua',
    'modules/client/characters/charlist.lua',
    'modules/client/characters/dialogsHandler.lua',

}

server_scripts {
    'config/main.lua',
    'server/main.lua',
}



