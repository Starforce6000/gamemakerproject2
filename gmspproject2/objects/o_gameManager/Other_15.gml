/// @description ITEM PURCHASE
if(purchaseID != -1) {
	remainingOutfitSpace = o_shipManager.outfitSpace[playerShipID]
	remainingEngineSpace = o_shipManager.engineSpace[playerShipID]
	remainingOutfitSpace -= o_shipManager.thrusterSpaceUse[playerThrusterID]
	remainingOutfitSpace -= o_shipManager.thrusterSpaceUse[playerManeuverID]
	remainingEngineSpace -= o_shipManager.thrusterSpaceUse[playerThrusterID]
	remainingEngineSpace -= o_shipManager.thrusterSpaceUse[playerManeuverID]
	for(i = 0; i < gunsEquipped; i++) {
		remainingOutfitSpace -= o_shipManager.weaponSpaceUse[playerGunports[i]]
	}
	for(i = 0; i < turretsEquipped; i++) {
		remainingOutfitSpace -= o_shipManager.weaponSpaceUse[playerTurretports[i]]
	}
	for(i = 0; i < modulesEquipped; i++) {
		remainingOutfitSpace -= o_shipManager.spaceUse[playerModules[i]]
	}
	switch (purchaseType) {
		case "Thruster":
			if(o_shipManager.thrusterType[purchaseID] == "main") {
				if(remainingOutfitSpace + o_shipManager.thrusterSpaceUse[playerThrusterID] >= o_shipManager.thrusterSpaceUse[purchaseID]) {
					if(remainingEngineSpace + o_shipManager.thrusterSpaceUse[playerThrusterID] >= o_shipManager.thrusterSpaceUse[purchaseID]) {
						if(playerCredits >= o_shipManager.thrusterCost[purchaseID]) {
							playerCredits -= o_shipManager.thrusterCost[purchaseID]
							playerCredits += o_shipManager.thrusterCost[playerThrusterID]
							playerThrusterID = purchaseID
						}
					}
				}
			} else {
				if(remainingOutfitSpace + o_shipManager.thrusterSpaceUse[playerManeuverID] >= o_shipManager.thrusterSpaceUse[purchaseID]) {
					if(remainingEngineSpace + o_shipManager.thrusterSpaceUse[playerManeuverID] >= o_shipManager.thrusterSpaceUse[purchaseID]) {
						if(playerCredits >= o_shipManager.thrusterCost[purchaseID]) {
							playerCredits -= o_shipManager.thrusterCost[purchaseID]
							playerCredits += o_shipManager.thrusterCost[playerManeuverID]
							playerManeuverID = purchaseID
						}
					}
				}
			}
			break
		case "Weapon":
			if(o_shipManager.weaponType[purchaseID] == "gun") {
				if((remainingOutfitSpace >= o_shipManager.weaponSpaceUse[purchaseID]) && (gunsEquipped < o_shipManager.gunPorts[playerShipID])) {
					if(playerCredits >= o_shipManager.weaponCost[purchaseID]) {
						playerCredits -= o_shipManager.weaponCost[purchaseID]
						playerGunports[gunsEquipped] = purchaseID
						gunsEquipped++
					}
				}
			} else {
				if((remainingOutfitSpace >= o_shipManager.weaponSpaceUse[purchaseID]) && (turretsEquipped < o_shipManager.turretPorts[playerShipID])) {
					if(playerCredits >= o_shipManager.weaponCost[purchaseID]) {
						playerCredits -= o_shipManager.weaponCost[purchaseID]
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
					playerModules[modulesEquipped] = purchaseID
					modulesEquipped++
				}
			}
			break
		case "Commodity":
			amount = 1
			if(keyboard_check(vk_shift)) {
				amount = 10
			}
			if((cargoRemaining >= amount) && (playerCredits >= cargoMainPrice[purchaseID] * amount)) {
				cargoRemaining -= amount
				inCargo[purchaseID] += amount
				playerCredits -= cargoMainPrice[purchaseID] * amount
			}
			break
	}
}

for(i = 0; i < buttonCount; i++) {
	with(subMenuButton[i]) {
		event_perform(ev_other, ev_user0)	
	}
}