-- local player = tostring(game.Players.LocalPlayer.Name)
-- while true do
--     if game.Workspace:FindFirstChild("GreenBalloon") then
--         if not game.Workspace[player]:FindFirstChild("GreenBalloon") and not game.Players.LocalPlayer.Backpack:FindFirstChild("GreenBalloon") then
--             local workspaceClone = game.Workspace.GreenBalloon:Clone()
--             workspaceClone.Parent = game.Workspace[player]
--         end
--     else
--         local balloonCheck = game.Workspace:GetDescendants()
--         local balloonClone
--         for i, balloon in ipairs(balloonCheck) do
--             if (tostring(balloon.Name) == "GreenBalloon") then
--                 balloonClone = balloon:Clone()
--                 wait()
--             end
--         end
--         balloonClone.Parent = game.Workspace
--         local workspaceClone = game.Workspace.GreenBalloon:Clone()
--         workspaceClone.Parent = game.Workspace[player]
--     end
--     wait()
-- end

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local balloon

while true do
    for _, player in pairs(Players:GetPlayers()) do
        balloon = player.Backpack:FindFirstChild("GreenBalloon")
        if balloon then break end
        if player.Character then balloon = player.Character:FindFirstChild("GreenBalloon") end
        if balloon then break end
        -- ugly but idk how else do this compact
    end
    if balloon then
        balloon = balloon:Clone()
        print("ballon found")
        break
    end
    task.wait(1)
end

local function giveBalloon()
    balloon:Clone().Parent = LocalPlayer.Backpack
end

giveBalloon()
LocalPlayer.CharacterAdded:Connect(giveBalloon)