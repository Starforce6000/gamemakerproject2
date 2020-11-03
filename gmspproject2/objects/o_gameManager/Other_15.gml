/// @description OUTFIT PURCHASE
if(purchaseID != -1) {
	remainingOutfitSpace = o_shipManager.outfitSpace[playerShipID]
	remainingOutfitSpace -= o_shipManager.thrusterSpaceUse[playerThrusterID]
	remainingOutfitSpace -= o_shipManager.thrusterSpaceUse[playerManeuverID]
	for(i = 0; i < 6; i++) {
		if(playerGunports[i] != -1 ) {
			remainingOutfitSpace -= o_shipManager.weaponSpaceUse[playerGunports[i]]
		}
	}
	for(i = 0; i < 4; i++) {
		if(playerTurretports[i] != -1 ) {
			remainingOutfitSpace -= o_shipManager.weaponSpaceUse[playerTurretports[i]]
		}
	}
	switch (purchaseType) {
		case "Thruster":
			if(o_shipManager.thrusterType[purchaseID] == "main") {
				if(remainingOutfitSpace + o_shipManager.thrusterSpaceUse[playerThrusterID] >= o_shipManager.thrusterSpaceUse[purchaseID]) {
					if(playerCredits >= o_shipManager.thrusterCost[purchaseID]) {
						playerCredits -= o_shipManager.thrusterCost[purchaseID]
						playerCredits += o_shipManager.thrusterCost[playerThrusterID]
						playerThrusterID = purchaseID
					}
				}
			} else {
				if(remainingOutfitSpace + o_shipManager.thrusterSpaceUse[playerManeuverID] >= o_shipManager.thrusterSpaceUse[purchaseID]) {
					if(playerCredits >= o_shipManager.thrusterCost[purchaseID]) {
						playerCredits -= o_shipManager.thrusterCost[purchaseID]
						playerCredits += o_shipManager.thrusterCost[playerManeuverID]
						playerManeuverID = purchaseID
					}
				}
			}
			break
		case "Weapon":
			if(o_shipManager.weaponType[purchaseID] == "gun") {
				if((remainingOutfitSpace >= o_shipManager.weaponSpaceUse[purchaseID]) && (gunsEquipped < o_shipManager.gunPorts[playerShipID])) {
					if(playerCredits >= o_shipManager.weaponCost[purchaseID]) {
						playerCredits -= o_shipManager.weaponCost[purchaseID]
						playerCredits += o_shipManager.weaponCost[playerThrusterID]
						playerGunports[gunsEquipped] = purchaseID
						gunsEquipped++
					}
				}
			} else {
				if((remainingOutfitSpace >= o_shipManager.weaponSpaceUse[purchaseID]) && (turretsEquipped < o_shipManager.turretPorts[playerShipID])) {
					if(playerCredits >= o_shipManager.weaponCost[purchaseID]) {
						playerCredits -= o_shipManager.weaponCost[purchaseID]
						playerCredits += o_shipManager.weaponCost[playerManeuverID]
						playerTurretports[turretsEquipped] = purchaseID
						turretsEquipped++
					}
				}
			}
			break
		case "Misc":
			if(remainingOutfitSpace >= o_shipManager.spaceUse[purchaseID]) {
				if(playerCredits >= o_shipManager.outfitCost[purchaseID]) {
					playerCredits -= o_shipManager.outfitCost[purchaseID]
					playerCredits += o_shipManager.outfitCost[playerManeuverID]
					playerModules[modulesEquipped] = purchaseID
					modulesEquipped++
				}
			}
			break
	}
}