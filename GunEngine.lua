-- Work in progress

local WeaponEngine = {
	
	BaseGunClass = {
		
		-- Automatic, single shot, 30-42 rounds/mag

		OnEquip = function(self)
			
		end,
		
		OnUnEquip = function(self)
			
		end,
		
		OnFire = function(self, start, fin)
			
		end,
		
	},
	
	AssaultGunClass = {
		
		-- Automatic, single shot, 30-42 rounds/mag
		
		OnEquip = WeaponEngine.BaseGunClass.OnEquip,
		
		OnUnEquip = WeaponEngine.BaseGunClass.OnUnEquip,
		
		OnFire = WeaponEngine.BaseGunClass.OnUnEquip
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
	}
	
}
