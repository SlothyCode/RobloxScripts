---------- >>  FrigidSloth  << ----------

script.Name = "main.double_jump";

--------- >> Initialisation << ----------

local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local Character = Player.CharacterAdded:wait() or Player.Character
local Mouse = Player:GetMouse()
local isJumping = false
local isDoubleJumping = false

local Jump = Mouse.KeyDown:connect(function(key)
	key = key:lower()
	if key == string.char(32) then
		local t = tick()
		isJumping = true
		local DoubleJump = Mouse.KeyDown:connect(function(k)
			if (tick()-t <= 0.8) and (k == string.char(32)) and isJumping and not isDoubleJumping then
				local Torso = Character:WaitForChild("Torso")
				Torso.Velocity = Vector3.new(0, 100, 0)
				isDoubleJumping = true
				wait(1)
				isJumping = false
				isDoubleJumping = false
			end
		end)
		Mouse.KeyDown:connect(function(ki)
			if ki:lower() == "q" then
				
			end
		end)
	end
end)
