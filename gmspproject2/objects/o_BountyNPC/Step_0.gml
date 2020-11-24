if(o_gameManager.player.alive && o_gameManager.menu == "") {
	point = point_direction(x, y, o_playerShip.x, o_playerShip.y)
	angle = angle_difference(image_angle, point)
	image_angle -= min(abs(angle), (turn * mass) / room_speed) * sign(angle);

	if(abs(angle) <= 30) {
		motion_add(image_angle, (acceleration * mass) / (2 * room_speed))
		if(speed > (acceleration * mass) + (acceleration * 0.5)) {
			speed = (acceleration * mass) + (acceleration * 0.5)
		}
	} else if(abs(angle) <= 120) {
		motion_add(image_angle, (acceleration * 0.25 * mass) / (2 * room_speed))
		if(speed > (acceleration * mass) + (acceleration * 0.5)) {
			speed = (acceleration * mass) + (acceleration * 0.5)
		}
	}

	if(distance_to_object(o_playerShip) <= 1000) {
		target = o_gameManager.player	
		if(abs(angle <= 5)) {
			firing = true	
		} else {
			firing = false	
		}
	} else {
		target = -1	
		firing = false
	}

	if(target != lastTarget) {
		for(i = 0; i < o_shipManager.turretPorts[shipID]; i++) {
			turrets[i].target = target	
		}
	}
	lastTarget = target


} else {
	target = -1
	for(i = 0; i < o_shipManager.turretPorts[shipID]; i++) {
		turrets[i].target = target	
	}
}

chargeDelay -= 1 / room_speed
if(chargeDelay <= 0) {
	shieldHP += shieldChargeRate / room_speed
	shieldHP = min(shieldHP,maxShieldHP)
}

if(hullHP <= 0) {
	o_gameManager.npcs[npcID] = 0
	for(i = 0; i < o_shipManager.turretPorts[shipID]; i++) {
		o_gameManager.spawnedTurrets[turrets[i].turretID] = 0
		instance_destroy(turrets[i])
	}
	for(i = 0; i < o_shipManager.gunPorts[shipID]; i++) {
		o_gameManager.spawnedTurrets[guns[i].turretID] = 0
		instance_destroy(guns[i])
	}
	o_gameManager.payout = o_gameManager.missionRewards[missionNum]
	o_gameManager.payoutShip = shipID
	with(o_gameManager.payUI) {
		event_perform(ev_other,ev_user0)
	}
	o_gameManager.missionLocations[missionNum] = -1
	o_gameManager.playerCredits += o_gameManager.missionRewards[missionNum]
	instance_destroy()
}