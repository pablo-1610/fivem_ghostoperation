Ghost = {}

Ghost.generateNPC = function(id,pos,behavior)
end

Ghost.showLoading = function(message)
        if type(message) == "string" then
            Citizen.InvokeNative(0xABA17D7CE615ADBF, "STRING")
            AddTextComponentSubstringPlayerName(message)
            Citizen.InvokeNative(0xBD12F8228410D9B4, 3)
        else
            Citizen.InvokeNative(0xABA17D7CE615ADBF, "STRING")
            AddTextComponentSubstringPlayerName("")
            Citizen.InvokeNative(0xBD12F8228410D9B4, -1)
        end
    end