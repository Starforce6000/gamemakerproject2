if(mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id)) {
	switch (button) {
		case "Start Game":
			with (o_gameManager) {
				event_perform(ev_other, ev_user0)
			}
			instance_destroy()
			break;	
		case "Undock":
			with(o_gameManager) {
				event_perform(ev_other, ev_user1)
			}
			break;
		case "Commodities":
			break;
		case "Job Board":
			break;
		case "Outfitting":
			with (o_gameManager) {
				event_perform(ev_other, ev_user2)	
			}
			break;
		case "Shipyard":
			with (o_gameManager) {
				event_perform(ev_other, ev_user4)	
			}
			break;
		case "Storage":
			break;
		case "Exit":
			with (o_gameManager) {
				event_perform(ev_other, ev_user3)	
			}
			break;
		case "Selector":
			selected = true
			break;
		case "Purchase":
			with (o_gameManager) {
				
			}
			break;
		case "Accept":
			break;
	}
}