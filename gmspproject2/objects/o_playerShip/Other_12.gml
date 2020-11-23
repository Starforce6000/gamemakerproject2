/// @description SPAWN WEAPONS
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
	o_gameManager.spawnedTurrets[o_gameManager.turretAmt] = turrets[i]
	o_gameManager.turretAmt++
}
num = 0
found = false
for(i = 0; i < o_shipManager.ships; i++) {
	if((shipID > i) && !found) {
		num += o_shipManager.gunPorts[i]
	} else {
		found = true	
	}
}
for(i = 0; i < o_gameManager.gunsEquipped; i++) {
	guns[i] = instance_create_layer(x, y, "Foreground", o_gun)
	guns[i].ship = id
	guns[i].dispX = o_shipManager.gunLocationsX[i+num]
	guns[i].dispY = o_shipManager.gunLocationsY[i+num]
	guns[i].gunType = o_gameManager.playerGunports[i]
	guns[i].playerGun = true
	
	with(guns[i]) {
		event_perform(ev_other, ev_user0)	
	}
	o_gameManager.spawnedTurrets[o_gameManager.turretAmt] = guns[i]
	o_gameManager.turretAmt++
}
