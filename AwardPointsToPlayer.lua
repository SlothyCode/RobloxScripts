local DataStore = game:GetService("DataStoreService")
local PointsStore = DataStore:GetOrderedDataStore("Points")

local function GetPlayerByPattern(pattern)
	print(pattern)
	for _, v in pairs(game.Players:GetPlayers()) do
    		if v.Name:lower():find(pattern:lower()) then
			print(v.Name)
      			return v
    		end
  	end
end



local function SaveData(key, value)
	return PointsStore:UpdateAsync(key, function(oldValue)
		local newValue = oldValue or (value~=0 and value)
		return newValue
	end)
end

local function GetData(key)
	return PointsStore:GetAsync(key)
end

game.Players.PlayerAdded:connect(function(player)
	local ls = Instance.new("IntValue", player)
	ls.Name = "leaderstats"
	
	local poi = Instance.new("IntValue", ls)
	poi.Value = GetData(player.UserId) or 0
	poi.Name = "Points"
	
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
			local plrPoints = player:FindFirstChild("leaderstats"):FindFirstChild("Points").Value
			
			if negate then 
				numPoints = -(numPoints) 
			end
			
			plrPoints = plrPoints + numPoints
			SaveData(player.UserId, plrPoints)
		end
	 end)
	
end)
