function getDialogFromOtherQuest(questID)
    if questID == "A1" then
        return {
            -- Quête n°1, hélicoptère..
            {from = "PILOT", {[0] = {voiceFile = "a", text = "On arrive dans quelques minutes, tenez-vous prêts!"}, [1] = {voiceFile = "a", text = "On arrive dans quelques minutes, tenez-vous prêts!"}}},
            {from = "CENTRAL", {[0] = {voiceFile = "a", text = "Centrale à ghost alpha, vous me recevez?"}, [1] = {voiceFile = "a", text = "Centrale à ghost alpha, vous me recevez?"}}},
            {from = "MARSHALL", {[0] = {voiceFile = "a", text = "Cinq sur cinq, on a quoi aujourd'hui?"}, [1] = {voiceFile = "a", text = "Cinq sur cinq, on a quoi aujourd'hui?"}}},
            {from = "CENTRAL", {[0] = {voiceFile = "b", text = "Un gouvernement corrompu par des trafficants de drogues, vous serez déposés au point delta, d'ici vous rentrerez en contact avec la resistance locale"}, [0] = {voiceFile = "a", text = "Un gouvernement corrompu par des trafficants de drogues, vous serez déposés au point delta, d'ici vous rentrerez en contact avec la resistance locale"}}},
            {from = "MARSHALL", {[0] = {voiceFile = "b", text = "Encore des narcos qui se pensent au dessus de l'êtat.."}, [1] = {voiceFile = "a", text = "Encore des narcos qui se pensent au dessus de l'êtat.."}}},
            {from = "MARSHALL", {[0] = {voiceFile = "c_f", text = "Bon, et toi petite, t'es stressée?"}, [1] = {voiceFile = "c_h", text = "Bon, et toi petit, t'es stressé?"}}},

            {from = "MARSHALL", {[0] = {voiceFile = "d", text = "T'inquiète on est déjà tous passés par là.."}, [1] = {voiceFile = "d", text = "T'inquiète on est déjà tous passés par là.."}}},
        }
    end
end

function getDialogFromQuest(questID,sex)
    if questID == "A1" then
        return {
            -- Quête n°1, hélicoptère..
            [1] = {
                voiceFile = "a",
                ["F"] = {text = "Oui mais.. Je suis encore jamais partie en mission.."},
                ["H"] = {text = "Ouai mais.. Je suis encore jamais parti en mission.."},
            },
        }
    end
end

function speech(from,file,duration,text)
    PlayFile(from.."/"..file..".ogg", 0.5)
    local isEnded = false
    Citizen.CreateThread(function()
        while not isEnded do
            RageUI.text("~b~"..Characters[from]..": ~s~"..text)
        end
    end)
    Citizen.Wait(duration)
    isEnded = true
end