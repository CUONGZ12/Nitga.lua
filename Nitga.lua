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
    "Im cheater"  
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
