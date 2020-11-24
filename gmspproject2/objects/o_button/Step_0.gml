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
			with (o_gameManager) {
				event_perform(ev_other, ev_user10)	
			}
			break
		case "Job Board":
			with (o_gameManager) {
				event_perform(ev_other, ev_user11)	
			}
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
			if(o_gameManager.menu == "Outfits") {
				powerGeneration = 0
				for(i = 0; i < o_gameManager.modulesEquipped; i++) {
					powerGeneration += o_shipManager.energyGeneration[o_gameManager.playerModules[i]]
				}
				heatGeneration = 0
				for(i = 0; i < o_gameManager.modulesEquipped; i++) {
					heatGeneration += o_shipManager.heatGeneration[o_gameManager.playerModules[i]]
				}
				if(powerGeneration > 0 and heatGeneration <= 0) {
					with (o_gameManager) {
						event_perform(ev_other, ev_user3)	
					}
				}
			} else {
				with (o_gameManager) {
					event_perform(ev_other, ev_user3)	
				}
			}
			break
		case "Selector":
			if(purchaseType != "Commodity" && purchaseType != "") {
				o_gameManager.purchaseType = purchaseType
				o_gameManager.purchaseID = itemID
				o_gameManager.selected = buttonID
				o_gameManager.purchaseName = item
			} else if(purchaseType == "Commodity") {
				o_gameManager.selected = buttonID
				o_gameManager.purchaseName = o_gameManager.cargoNames[buttonID]
				o_gameManager.purchaseID = buttonID
				o_gameManager.purchaseType = purchaseType

			} else {
				o_gameManager.missionType = missionType
				o_gameManager.selected = buttonID
				o_gameManager.missionDest = location
				o_gameManager.missionSize = missionSize
				o_gameManager.missionAmount = cargoAmount
				o_gameManager.missionPay = pay
			}
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
		case "Sell":
			if(o_gameManager.purchaseType != "Ship") {
				with(o_gameManager) {
					event_perform(ev_other, ev_user13)	
				}
			}
			break
		case "Accept":
			with (o_gameManager) {
				event_perform(ev_other, ev_user9)	
			}
			break
		case "OK":
			instance_destroy()
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

if(button == "OK" and o_gameManager.menu != "station") {
	instance_destroy()	
}