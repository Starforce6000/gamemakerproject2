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
		case "Storage":
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
			with (o_gameManager) {
				event_perform(ev_other, ev_user5)	
			}
			break
		case "Accept":
			break
	}
}