local playerData = {}
local playerDataSync = false
local localServerData = {}

AddEventHandler('onClientMapStart', function()
    Citizen.Wait(2500)
    DoScreenFadeIn(800)
    -- Démarrage des systèmes de caches
    exports.spawnmanager:setAutoSpawn(false)

    
    Citizen.Wait(1500)
   

    DoScreenFadeOut(100)

    while not IsScreenFadedOut() do Citizen.Wait(50) end
    Ghost.showLoading("Chargement de vos données")
    Citizen.Wait(9000)
    TriggerServerEvent(sysPrefix.."getPlayerData")

    while not playerDataSync do Citizen.Wait(100) end
    Ghost.showLoading(false)
    Ghost.initializeGame()
    DoScreenFadeIn(100)
end)

RegisterNetEvent(sysPrefix.."receivePlayerData")
AddEventHandler(sysPrefix.."receivePlayerData", function(data)
    playerData = data
    playerDataSync = true

end)

-- Récupération des données
Ghost.getData = function()
    return playerData,localServerData
end



