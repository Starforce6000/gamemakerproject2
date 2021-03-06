if(o_gameManager.menu == "" && alive) {
	if(!jumping) {
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
	if(jumping) {
		systemJumpTimer -= 1
		if(systemJumpTimer <= 0) {
			jumping = false
			with(o_gameManager) {
				event_perform(ev_other, ev_user7)
			}
		}
	}
	
	chargeDelay -= 1 / room_speed
	if(chargeDelay <= 0) {
		shieldHP += shieldChargeRate / room_speed
		shieldHP = min(shieldHP,maxShieldHP)
	}
	
	shipEnergy += energyGeneration / room_speed
	shipEnergy = min(shipEnergy, maxEnergy)
	
	if(hullHP <= 0 && alive = true) {
		alive = false	
		//for(i = 0; i < 5; i++) {
			//instance_create_layer(x + irandom_range(-50,50), y+irandom_range(-50,50), "Foreground", o_explosion)
		//}
	}
}

if (invincible) {
	shieldHP = maxShieldHP
	hullHP = maxHullHP
}