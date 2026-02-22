local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local player = Players.LocalPlayer

math.randomseed(tick())


-- ===== Auto chat spam =====
local TextChatService = game:GetService("TextChatService")
local messages = {
    "ez",
    "Wtf",
    "Cặc",
    "sex",
    "Im cheater", 
    "thằng gay 🤣",
    "gay damge",
    "con đĩ lồn",
    "dit me thang gay lon ngu nhu cho chet me di song lam con cac gi nua thang that hoc ngu lon oc cho bi bo me bo haha",
    "ngu lồn",
    "ngáo lồn",
    "oc cho",
    "đi me may",
    "con cu",
    "đi me thg lon",
    "đụ má",
    "con cặc chó",
    "con đĩ chó"
}

if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
    local textChannel = TextChatService.TextChannels:FindFirstChild("RBXGeneral")

    if textChannel then
        while true do
            task.wait(0.3)

            local randomMessage = messages[math.random(1, #messages)]
            textChannel:SendAsync(randomMessage)
        end
    end
end
