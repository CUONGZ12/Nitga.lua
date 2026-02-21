local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local player = Players.LocalPlayer

math.randomseed(tick())

-- ===== TELEPORT LOOP =====
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

-- ===== AUTO CHAT LOOP =====
local messages = {
    "T",
    "C",
    "Đ",
    "C"
}

task.spawn(function()
    while true do
        task.wait(0.1) -- đổi số nếu muốn nhanh/chậm hơn

        local chatEvents = ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents")
        if chatEvents then
            local sayEvent = chatEvents:FindFirstChild("SayMessageRequest")
            if sayEvent then
                local msg = messages[math.random(1, #messages)]
                sayEvent:FireServer(msg, "All")
            end
        end
    end
end)
