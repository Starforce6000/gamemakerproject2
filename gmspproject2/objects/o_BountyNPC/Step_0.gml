point = point_direction(x, y, o_playerShip.x, o_playerShip.y)
angle = angle_difference(image_angle, point)
image_angle -= min(abs(angle), (turn * mass) / room_speed) * sign(angle);

if(abs(angle) <= 70) {
	motion_add(image_angle, (acceleration * mass) / (2 * room_speed))
	if(speed > (acceleration * mass) + (acceleration * 0.5)) {
		speed = (acceleration * mass) + (acceleration * 0.5)
	}
}