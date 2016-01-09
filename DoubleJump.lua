local Player = game.Players.LocalPlayer
local Char = Player.Character or Player.CharacterAdded:wait()
local UserInput = game:GetService("UserInputService")
local isJumping = false
local isSecondJumping = false
local JumpPower = 40

UserInput.InputBegan:connect(function(inputObj)
	if inputObj.UserInputState == Enum.UserInputState.Begin then
		if inputObj.KeyCode == Enum.KeyCode.Space then
			isJumping = true
			local init = tick()
			local secondJump = UserInput.InputBegan:connect(function(iObj2)
				if inputObj.UserInputState == Enum.UserInputState.Begin then
					if inputObj.KeyCode == Enum.KeyCode.Space then
						if tick() - init <= 0.55 and not isSecondJumping then
							isSecondJumping = true
							for i, bodyPart in next, Char:GetChildren() do
								if bodyPart:IsA("BasePart") then
									print(bodyPart.Name, "     ", bodyPart:GetMass() * JumpPower)
									bodyPart.Velocity = Vector3.new(0, JumpPower * bodyPart:GetMass(), 0)
									wait()
									bodyPart.Velocity = Vector3.new(0, 0, 0)
								end
							end
							repeat wait() until not Char:WaitForChild("Humanoid").Jump
							isSecondJumping = false
							isJumping = false
						end
					end
				end
			end)
		end
	end
end)
