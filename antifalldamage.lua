local LocalPlayer = game:GetService("Players").LocalPlayer

local function removeFallDamage(character)
    character:WaitForChild("FallDamageScript"):Destroy()
end

if LocalPlayer.Character then removeFallDamage(LocalPlayer.Character) end

LocalPlayer.CharacterAdded:Connect(removeFallDamage)