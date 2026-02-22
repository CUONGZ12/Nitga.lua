local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local player = Players.LocalPlayer

math.randomseed(tick())

-- ===== Tp player =====
task.spawn(function()
    while true do
        task.wait(0.1)

        local character = player.Character
        if character then
            local hrp = character:FindFirstChild("HumanoidRootPart")
            if hrp then
                local offsetX = math.random(-300, 300)
                local offsetZ = math.random(-300, 300)

                local newPosition = hrp.Position + Vector3.new(offsetX, 0, offsetZ)
                hrp.CFrame = CFrame.new(newPosition)
            end
        end
    end
end)

-- ===== Auto chat spam =====
local TextChatService = game:GetService("TextChatService")

local messages = {
    "homeless",
    "noob",
    "lol",
    "wtf",
    "ez"
}

if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
    local textChannel = TextChatService.TextChannels:FindFirstChild("RBXGeneral")

    if textChannel then
        while true do
            task.wait(0.5)

            local randomMessage = messages[math.random(1, #messages)]
            textChannel:SendAsync(randomMessage)
        end
    end
end
