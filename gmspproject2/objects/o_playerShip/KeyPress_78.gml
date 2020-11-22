/// @description NEXT TARGET

target += 1
if(target >= o_gameManager.npcAmt) {
	target = -1	
}
if(target != -1) {
	for(i = 0; i < o_gameManager.turretsEquipped; i++) {
		turrets[i].target = target	
	}
}