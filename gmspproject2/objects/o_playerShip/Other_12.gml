/// @description SPAWN TURRETS
num = 0
found = false
for(i = 0; i < o_shipManager.ships; i++) {
	if((shipID > i) && !found) {
		num += o_shipManager.turretPorts[i]
	} else {
		found = true	
	}
}
for(i = 0; i < o_gameManager.turretsEquipped; i++) {
	turrets[i] = instance_create_layer(x, y, "Foreground", o_turret)
	turrets[i].ship = id
	turrets[i].dispX = o_shipManager.turretLocationsX[i+num]
	turrets[i].dispY = o_shipManager.turretLocationsY[i+num]
	turrets[i].turretType = o_gameManager.playerTurretports[i]
	turrets[i].playerTurret = true
	
	with(turrets[i]) {
		event_perform(ev_other, ev_user0)	
	}
	o_gameManager.spawnedTurrets[i] = turrets[i]
	o_gameManager.turretAmt++
}