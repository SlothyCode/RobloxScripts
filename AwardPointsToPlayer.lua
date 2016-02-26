local DataStore = game:GetService("DataStoreService")
local PointsStore = DataStore:GetOrderedDataStore("Points")

local function GetPlayerByPattern(pattern)
  for _, v in pairs(game.Players:GetPlayers()) do
    if v.Name:lower():find(name:lower()) then
      return v
    end
  end
end

game.Players.PlayerAdded:connect(function(player)
  player.Chatted:connect(function(msg)
    if msg:sub(1, 6) == ":award" then
      local negate = false
      local start = 8
      if msg:sub(8, 8) == "-" then
        negate = true
        start = 9
      end
      local string = msg:sub(start, -1)
      local player = GetPlayerByPattern(string:match("^%S+"))
      local numPoints = string:match("%d+$")
      if numPoints > 0 then
        local plrPoints = player:findFirstChild("Points").Value
        if negate then 
          numPoints = -(numPoints) 
        end
        plrPoints = plrPoints + numPoints
      end
    end
  end)
end)
