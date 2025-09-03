local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local User = require(ReplicatedStorage:WaitForChild("Modules"):WaitForChild("User"))

Players.PlayerAdded:Connect(function(player: Player)
    local newUser = User.new(player.Name, player.UserId)
    print(newUser:greet())
end)

