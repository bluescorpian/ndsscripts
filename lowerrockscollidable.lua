local island = workspace.Island

for  _, child in pairs(island:GetChildren()) do
    if child.Name == "LowerRocks" then
        child.CanCollide = true
    end
end