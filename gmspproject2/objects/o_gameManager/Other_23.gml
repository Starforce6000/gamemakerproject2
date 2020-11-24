/// @description ITEM SELL

/// @description ITEM PURCHASE
if(purchaseID != -1) {
	switch (purchaseType) {
		case "Weapon":
			if(o_shipManager.weaponType[purchaseID] == "gun") {
				found = false
				foundIndex = -1
				for(i = 0; i < gunsEquipped; i++) {
					if(!found and playerGunports[i] == purchaseID)  {
						found = true
						foundIndex = i
					}
				}
				if(found) {
					playerCredits += o_shipManager.weaponCost[purchaseID]
					for(i = foundIndex; i < gunsEquipped; i++) {
						if(i != gunsEquipped - 1) {
							playerGunports[i] = playerGunports[i + 1]
						}
					}
					gunsEquipped--
				}
			} else {
				found = false
				foundIndex = -1
				for(i = 0; i < turretsEquipped; i++) {
					if(!found and playerTurretports[i] == purchaseID)  {
						found = true
						foundIndex = i
					}
				}
				if(found) {
					playerCredits += o_shipManager.weaponCost[purchaseID]
					for(i = foundIndex; i < turretsEquipped; i++) {
						if(i != turretsEquipped - 1) {
							playerTurretports[i] = playerTurretports[i + 1]
						}
					}
					turretsEquipped--
				}
			}
			break
		case "Misc":
			found = false
			foundIndex = -1
			for(i = 0; i < modulesEquipped; i++) {
				if(!found and playerModules[i] == purchaseID)  {
					found = true
					foundIndex = i
				}
			}
			if(found) {
				playerCredits += o_shipManager.outfitCost[purchaseID]
				for(i = foundIndex; i < modulesEquipped; i++) {
					if(i != modulesEquipped - 1) {
						playerModules[i] = playerModules[i + 1]
					}
				}
				modulesEquipped--
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