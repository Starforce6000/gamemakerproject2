if(o_gameManager.menu == "") {
	if (keyboard_check(vk_left) || keyboard_check(ord("A"))) {
		image_angle += 2 * (turn / room_speed) * mass
	}
	if (keyboard_check(vk_right) || keyboard_check(ord("D"))) {
		image_angle -= 2 * (turn / room_speed) * mass
	}
	if (keyboard_check(vk_up) || keyboard_check(ord("W"))) {
		motion_add(image_angle, (acceleration * mass) / (2 * room_speed))
		if(speed > (acceleration * mass) + (acceleration * 0.5)) {
			speed = (acceleration * mass) + (acceleration * 0.5)
		}
		thrust = true
	} else {
		thrust = false
	}
	if (keyboard_check(ord("L"))) {
		if(place_meeting(x,y,o_station) && (speed <= 0.25)) {
			with(o_gameManager) {
				o_gameManager.dockStation = other
				event_perform(ev_other, ev_user6)	
			}
		}
		else {
		
		}
	}
}