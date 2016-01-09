-- Work in progress

local RepStorage = game:GetService("ReplicatedStorage") 

local WeaponEngine = {
	
	BaseGunClass = {
		
		-- Automatic, single shot, 30-42 rounds/mag

		OnEquip = function(self)
			
		end,
		
		OnUnEquip = function(self)
			
		end,
		
		OnFire = function(self, start, fin, plr, gun)
			
			local dir = (fin-start).magnitude
			local ray = Ray.new(start, dir)
			
			local bullet = RepStorage:FindFirstChild(gun.Name .. "Bullet"):Clone()
			local bv = Instance.new("BodyVelocity", bullet)
			
			bullet.CFrame = CFrame.new(start)
			bv.Velocity = dir.unit * -999	
			
		end,
		
	},
	
	AssaultGunClass = {
		
		-- Automatic, single shot, 30-42 rounds/mag
		
		OnEquip = WeaponEngine.BaseGunClass.OnEquip,
		
		OnUnEquip = WeaponEngine.BaseGunClass.OnUnEquip,
		
		OnFire = WeaponEngine.BaseGunClass.OnFire
	},
	
	BurstGunClass = {
		
		-- Semi-Automatic, three shot, 30-42 rounds/mag
		
		OnEquip = WeaponEngine.BaseGunClass.OnEquip,
		
		OnUnEquip = WeaponEngine.BaseGunClass.OnUnEquip,
		
		OnFire = function(self)
			
		end
	},
	
	ShotgunGunClass = {
		
		-- Semi-Automatic, burst shot, 8-12 slugs/mag
		
		OnEquip = WeaponEngine.BaseGunClass.OnEquip,
		
		OnUnEquip = WeaponEngine.BaseGunClass.OnUnEquip,
		
		OnFire = function(self)
			
		end
	},
	
	SniperGunClass = {
		
		-- Single fire, single shot, 5-6 rounds/mag
		
		OnEquip = WeaponEngine.BaseGunClass.OnEquip,
		
		OnUnEquip = WeaponEngine.BaseGunClass.OnUnEquip,
		
		OnFire = function(self)
			
		end,
	},
	
	PistolGunClass = {
		
		-- Single fire, single shot, 9 - 12 rounds/mag
		
		OnEquip = WeaponEngine.BaseGunClass.OnEquip,
		
		OnUnEquip = WeaponEngine.BaseGunClass.OnUnEquip,
		
		OnFire = function(self)
			
		end
	},
	
}
