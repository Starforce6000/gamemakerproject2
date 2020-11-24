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
for(i = 0; i < o_shipManager.turretPorts[shipID]; i++) {
	turrets[i] = instance_create_layer(x, y, "Foreground", o_turret)
	turrets[i].ship = id
	turrets[i].dispX = o_shipManager.turretLocationsX[i+num]
	turrets[i].dispY = o_shipManager.turretLocationsY[i+num]
	chooseTurret = irandom_range(0, 3) //WIll be 7 later
	if(chooseTurret % 2 == 0) {
		chooseTurret++	
	}
	turrets[i].turretType = chooseTurret
	
	with(turrets[i]) {
		event_perform(ev_other, ev_user0)	
	}
	turrets[i].turretID = o_gameManager.turretAmt
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
for(i = 0; i < o_shipManager.gunPorts[shipID]; i++) {
	guns[i] = instance_create_layer(x, y, "Foreground", o_gun)
	guns[i].ship = id
	guns[i].dispX = o_shipManager.gunLocationsX[i+num]
	guns[i].dispY = o_shipManager.gunLocationsY[i+num]
	chooseGun = irandom_range(0, 3) //WIll be 7 later
	if(chooseGun % 2 == 1) {
		chooseGun--
	}
	guns[i].gunType = chooseGun
	
	with(guns[i]) {
		event_perform(ev_other, ev_user0)	
	}
	guns[i].turretID = o_gameManager.turretAmt
	o_gameManager.spawnedTurrets[o_gameManager.turretAmt] = guns[i]
	o_gameManager.turretAmt++
}
