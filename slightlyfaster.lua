local LocalPlayer = game:GetService("Players").LocalPlayer

local function increaseWalkspeed(character)
    character:WaitForChild("Humanoid").WalkSpeed = character.Humanoid.WalkSpeed * 1.4
end

if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then increaseWalkspeed(LocalPlayer.Character) end

LocalPlayer.CharacterAdded:Connect(increaseWalkspeed)