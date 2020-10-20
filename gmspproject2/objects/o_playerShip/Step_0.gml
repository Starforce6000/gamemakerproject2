if (keyboard_check(vk_left)) {
	image_angle += (turn / room_speed)
	thrustL = true
} else {
	thrustL = false
}

if (keyboard_check(vk_right)) {
	image_angle -= (turn / room_speed)
	thrustR = true
} else {
	thrustR = false
}

if (keyboard_check(vk_up)) {
	motion_add(image_angle, (acceleration / room_speed))
	thrust = true
} else {
	thrust = false
}
