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

if(hullHP <= 0) {
	o_gameManager.npcs[npcID] = 0
	for(i = 0; i < o_shipManager.turretPorts[shipID]; i++) {
		instance_destroy(turrets[i])
	}
	for(i = 0; i < o_shipManager.gunPorts[shipID]; i++) {
		instance_destroy(guns[i])
	}
	instance_destroy()
}