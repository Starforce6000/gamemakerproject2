/// @description DOCK AT STATION

menu = "station"

menuButton[0] = instance_create_layer(200, 500, "UI", o_button)
menuButton[0].button = "Undock"

menuButton[1] = instance_create_layer(1150, 500, "UI", o_button)
menuButton[1].button = "Storage"

menuButton[2] = instance_create_layer(200, 600, "UI", o_button)
menuButton[2].button = "Commodities"

menuButton[3] = instance_create_layer(1150, 600, "UI", o_button)
menuButton[3].button = "Outfitting"

menuButton[4] = instance_create_layer(200, 700, "UI", o_button)
menuButton[4].button = "Job Board"

menuButton[5] = instance_create_layer(1150, 700, "UI", o_button)
menuButton[5].button = "Shipyard"

instance_destroy(player)
for(i = 0; i < npcAmt; i++) {
	instance_destroy(npcs[i])	
}
for(i = 0; i < turretAmt; i++) {
	instance_destroy(spawnedTurrets[i])	
}
instance_destroy(payUI)
npcAmt = 0
turretAmt = 0

completedMissions = 0
completeButton = instance_create_layer(683,500,"UI",o_button)
completeButton.button = "OK"
for(i = 0; i < missions; i++) {
	if(missionLocations[i] != -1) {
		if(missionType == "cargo" && missionLocations[i] != -1) {
			completeButton.pay[completedMissions] = missionRewards[i]
			completeButton.amount[completedMissions] = missionQuantity[i]
			completeButton.completedMissions++
			
			playerCredits += missionRewards[i]
			missionLocations[i] = -1
			missionCargo -= missionQuantity[i]
			completedMissions++
		}
	}
}

