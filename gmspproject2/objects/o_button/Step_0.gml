if(mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id)) {
	switch (button) {
		case "Start Game":
			with (o_gameManager) {
				event_perform(ev_other, ev_user0)
			}
			instance_destroy()
			break
		case "Undock":
			with(o_gameManager) {
				event_perform(ev_other, ev_user1)
			}
			break
		case "Commodities":
			break
		case "Job Board":
			break
		case "Outfitting":
			with (o_gameManager) {
				event_perform(ev_other, ev_user2)	
			}
			break
		case "Shipyard":
			with (o_gameManager) {
				event_perform(ev_other, ev_user4)	
			}
			break
		case "Skills":
			break
		case "Exit":
			with (o_gameManager) {
				event_perform(ev_other, ev_user3)	
			}
			break
		case "Selector":
			o_gameManager.purchaseType = purchaseType
			o_gameManager.purchaseID = itemID
			o_gameManager.selected = buttonID
			o_gameManager.purchaseName = item
			break
		case "Purchase":
			if(o_gameManager.purchaseType == "Ship") {
				with (o_gameManager) {
					event_perform(ev_other, ev_user8)	
				}
			} else {
				with (o_gameManager) {
					event_perform(ev_other, ev_user5)	
				}
			}
			
			break
		case "Accept":
			break
	}
}
if(o_gameManager.menu == "Outfits" && button == "Selector") {
	if (keyboard_check(vk_up) || keyboard_check(ord("W"))) {
		y += (300 / room_speed)
	}
	if (keyboard_check(vk_down) || keyboard_check(ord("S"))) {
		y -= (300 / room_speed)
	}
}