/// @description CHECK EQUIPPED MODULES

if(purchaseType == "Thruster") {
	if(o_shipManager.thrusterType[itemID] == "main") {
		if(o_gameManager.playerThrusterID == itemID) {
			moduleEquipped = true	
		} else {
			moduleEquipped = false
		} 
    } else {
		if(o_gameManager.playerManeuverID == itemID) {
			moduleEquipped = true	
		} else {
			moduleEquipped = false
		} 
	}
} else if(purchaseType == "Weapon") {
	if(o_shipManager.weaponType[itemID] == "turret") {
		moduleEquipped = 0
		for(i = 0; i < o_gameManager.turretsEquipped; i++) {
			if(o_gameManager.playerTurretports[i] == itemID) {
				moduleEquipped++
			}
		}	
	} else {
		moduleEquipped = 0
		for(i = 0; i < o_gameManager.gunsEquipped; i++) {
			if(o_gameManager.playerGunports[i] == itemID) {
				moduleEquipped++
			}
		}	
	}
} else if(purchaseType == "Misc") {
	moduleEquipped = 0
	for(i = 0; i < o_gameManager.modulesEquipped; i++) {
		if(o_gameManager.playerModules[i] == itemID) {
			moduleEquipped++	
		}
	}
}