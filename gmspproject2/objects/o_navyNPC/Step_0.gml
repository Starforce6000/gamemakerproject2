closestHostile = 0
closestDistance = 999999
found = false
for(i = 0; i < o_gameManager.npcAmt; i++) {
	if(o_gameManager.npcs[i] != 0) {
		if(o_gameManager.npcs[i].aiType = "Pirater") {
			if(distance_to_object(o_gameManager.npcs[i]) < closestDistance) {
				closestDistance = distance_to_object(o_gameManager.npcs[i])
				found = true
				closestHostile = o_gameManager.npcs[i]
			}
		}
	}
}
angle = 0
if(found) {
	warpOutCounter = -6 * room_speed
	point = point_direction(x, y, closestHostile.x, closestHostile.y)
	angle = angle_difference(image_angle, point)
	image_angle -= min(abs(angle), (turn * mass) / room_speed) * sign(angle)
} else {
	warpOutCounter++
	point = point_direction(x, y, o_station.x, o_station.y)
	angle = angle_difference(image_angle, point)
	image_angle -= min(abs(angle), (turn * mass) / room_speed) * sign(angle)
}
if(abs(angle) <= 30 && found) {
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

if(distance_to_object(closestHostile) <= 1000) {
	target = closestHostile
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
	instance_destroy()
}
if(warpOutCounter >= .5 * room_speed) {
	o_gameManager.npcs[npcID] = 0
	for(i = 0; i < o_shipManager.turretPorts[shipID]; i++) {
		o_gameManager.spawnedTurrets[turrets[i].turretID] = 0
		instance_destroy(turrets[i])
	}
	for(i = 0; i < o_shipManager.gunPorts[shipID]; i++) {
		o_gameManager.spawnedTurrets[guns[i].turretID] = 0
		instance_destroy(guns[i])
	}
	instance_destroy()
}