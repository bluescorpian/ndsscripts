local waterLevel = workspace:WaitForChild("WaterLevel")

-- creats part is welded to water level and is invisible and colidable
local solidWater = Instance.new("Part")
local waterWeld = Instance.new("Weld")

solidWater.Name = "SolidWater"
solidWater.Anchored = false
solidWater.Size = Vector3.new(1000, 1, 1000)
solidWater.CanCollide = true
solidWater.Transparency = 1

waterWeld.Name = "WaterWeld"
waterWeld.Part0 = workspace:WaitForChild("Structure"):FindFirstChild("FloodLevel") or waterLevel
waterWeld.Part1 = solidWater

waterWeld.Parent = solidWater
solidWater.Parent = workspace

workspace.Structure.ChildAdded:Connect(function(child)
    if child.Name == "FloodLevel" then
        waterWeld.Part0 = child
    end
end)
workspace.Structure.ChildRemoved:Connect(function(child)
    if child.Name == "FloodLevel" then
        waterWeld.Part0 = waterLevel
    end
end)