/// @description NEXT TARGET

target += 1
found = false
while(!found) {
	if(target >= o_gameManager.npcAmt) {
		target = -1
		found = true
	} else {
		if(o_gameManager.npcs[target] != 0) {
			if(o_gameManager.npcs[target].aiType == "Pirater" or o_gameManager.npcs[target].aiType == "Bounty") {
				found = true
			} else {
				target += 1
			}
		} else {
			target += 1
		}
	}
}
if(target != -1) {
	for(i = 0; i < o_gameManager.turretsEquipped; i++) {
		turrets[i].target = target	
	}
}