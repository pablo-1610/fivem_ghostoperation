Quests = {

    nextQuest = nil,
    currentQuestID = nil,
    currentHasQuestActive = false,

    startQuest = function(id)
        currentQuestID = id
        currentHasQuestActive = true
        loadQuestModels(id)
        Quests[id].create()
    end,

    endQuest = function()
        currentQuestID = nil
        currentHasQuestActive = false
        if nextQuest ~= nil then
            startQuest(nextQuest)
            nextQuest = nil
        end
    end,

    getHudDisplayMission = function(id)
        return "~o~"..Quests[id].title
    end,

    getHudDisplayObjective = function(id)
        return "~y~• "..Quests[id].objective.." ["..Quests[id].index.."/"..Quests[id].maxIndex.."]"
    end,

    loadQuestModels = function(id)
        for _,model in pairs(Quests[id].modelsToLoad) do
            RequestModel(model)
            while not HasModelLoaded(model) do Citizen.Wait(100) end
        end
        Citizen.CreateThread(function()
            while currentQuestID == id do Citizen.Wait(2000) end
            for _,model in pairs(Quests[id].modelsToLoad) do SetModelAsNoLongerNeeded(model) end
        end)
    end,

    [1] = {
        finalRewardEXP = 100,
        finalRewardMoney = 200,
        modelsToLoad = {"luxor"},
        title = "Le calme avant la tempête",
        index = 1,
        maxIndex = 1,
        objective = "Rejoignez l'aéroport international",

        create = function()
            
        end,
    },
}