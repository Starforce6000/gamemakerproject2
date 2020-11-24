
angle = 0
if(o_station && aiType == "Lander") {
	point = point_direction(x, y, o_station.x, o_station.y)
	angle = angle_difference(image_angle, point)
	image_angle -= min(abs(angle), (turn * mass) / room_speed) * sign(angle);
	if(abs(angle) <= 10) {
	motion_add(image_angle, (acceleration * mass) / (2 * room_speed))
	if(speed > (acceleration * mass) + (acceleration * 0.5)) {
		speed = (acceleration * mass) + (acceleration * 0.5)
	}
}
} else {
	warpCharge++
}

chargeDelay -= 1 / room_speed
if(chargeDelay <= 0) {
	shieldHP += shieldChargeRate / room_speed
	shieldHP = min(shieldHP,maxShieldHP)
}


if(hullHP <= 0) {
	o_gameManager.npcs[npcID] = 0
	instance_destroy()
}
if(warpCharge >= .5 * room_speed) {
	o_gameManager.npcs[npcID] = 0
	instance_destroy()
}
if(place_meeting(x,y,o_station)) {
	docktimer += 1 / room_speed
	if(docktimer >= 0) {
		o_gameManager.npcs[npcID] = 0
		instance_destroy()	
	}
}