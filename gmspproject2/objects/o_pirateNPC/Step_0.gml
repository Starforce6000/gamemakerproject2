closestHostile = 0
closestDistance = 999999
found = false
for(i = 0; i < o_gameManager.npcAmt; i++) {
	if(o_gameManager.npcs[i] != 0) {
		if(o_gameManager.npcs[i].aiType = "Patroller" or o_gameManager.npcs[i].aiType == "Lander") {
			if(distance_to_object(o_gameManager.npcs[i]) < closestDistance) {
				closestDistance = distance_to_object(o_gameManager.npcs[i])
				found = true
				closestHostile = o_gameManager.npcs[i]
			}
		}
	}
}
if(!found) {
	point = point_direction(x, y, o_playerShip.x, o_playerShip.y)
	angle = angle_difference(image_angle, point)
	image_angle -= min(abs(angle), (turn * mass) / room_speed) * sign(angle);
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
} else {
	point = point_direction(x, y, closestHostile.x, closestHostile.y)
	angle = angle_difference(image_angle, point)
	image_angle -= min(abs(angle), (turn * mass) / room_speed) * sign(angle);
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
}

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

if(target != lastTarget) {
	for(i = 0; i < o_shipManager.turretPorts[shipID]; i++) {
		turrets[i].target = target	
	}
}
lastTarget = target

if(hullHP <= 0) {
	for(i = 0; i < o_shipManager.turretPorts[shipID]; i++) {
		instance_destroy(turrets[i])
	}
	for(i = 0; i < o_shipManager.gunPorts[shipID]; i++) {
		instance_destroy(guns[i])
	}
	instance_destroy()
}