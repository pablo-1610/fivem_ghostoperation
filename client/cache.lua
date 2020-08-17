local playerData = {}
local playerDataSync = false
local localServerData = {}

AddEventHandler("onClientMapStart", function()
    -- Démarrage des systèmes de caches
	exports.spawnmanager:spawnPlayer()
	Citizen.Wait(5000)
    exports.spawnmanager:setAutoSpawn(false)

    TriggerServerEvent(sysPrefix.."getPlayerData")

    DoScreenFadeOut(800)

    while not IsScreenFadedOut() do Citizen.Wait(50) end
    


    Ghost.showLoading("Chargement de vos données")

    while not playerDataSync do Citizen.Wait(100) end

    Ghost.showLoading(false)
    Ghost.initializeGame()
    DoScreenFadeIn(800)
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



