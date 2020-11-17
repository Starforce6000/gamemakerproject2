/// @description SHIP PURCHASE
if((purchaseID != -1) && (purchaseID != playerShipID)) {
	sellCredits = o_shipManager.shipCost[playerShipID]
	sellCredits += o_shipManager.thrusterCost[playerThrusterID]
	sellCredits += o_shipManager.thrusterCost[playerManeuverID]
	for(i = 0; i < gunsEquipped; i++) {
		sellCredits += o_shipManager.weaponCost[playerGunports[i]]
	}
	for(i = 0; i < turretsEquipped; i++) {
		sellCredits += o_shipManager.weaponCost[playerTurretports[i]]
	}
	for(i = 0; i < modulesEquipped; i++) {
		sellCredits += o_shipManager.outfitCost[playerModules[i]]
	}
	sellCredits -= o_shipManager.thrusterCost[0]
	sellCredits -= o_shipManager.thrusterCost[1]
	if(sellCredits + playerCredits >= o_shipManager.shipCost[purchaseID]) {
		playerCredits += (sellCredits - o_shipManager.shipCost[purchaseID])
		playerThrusterID = 0
		playerManeuverID = 1
		playerShipID = purchaseID
		for(i = 0; i > gunsEquipped; i++) {
			playerGunports[i] = -1	
		}
		gunsEquipped = 0
		for(i = 0; i > turretsEquipped; i++) {
			playerTurretports[i] = -1
		}
		turretsEquipped = 0
		for(i = 0; i > modulesEquipped; i++) {
			playerModules[i] = -1
		}
		modulesEquipped = 0
	}
}