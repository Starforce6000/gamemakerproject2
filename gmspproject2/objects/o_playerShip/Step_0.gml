if (keyboard_check(vk_left) || keyboard_check(ord("A"))) {
	image_angle += 2*(turn / room_speed)
}
if (keyboard_check(vk_right) || keyboard_check(ord("D"))) {
	image_angle -= 2*(turn / room_speed)
}
if (keyboard_check(vk_up) || keyboard_check(ord("W"))) {
	motion_add(image_angle, (acceleration / (2*room_speed)))
	thrust = true
} else {
	thrust = false
}
if (keyboard_check(ord("L"))) {
	if(place_meeting(x,y,o_station)) {
		with(o_gameManager) {
			event_perform(ev_other, ev_user6)	
		}
	}
	else {
		
	}
}