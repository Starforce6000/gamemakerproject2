if(mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id)) {
	switch (button) {
		case "Start Game":
			with (o_gameManager) {
				event_perform(ev_other, ev_user0)
			}
			instance_destroy()
			break;	
		case "Undock":
			o_gameManager.player = instance_create_layer(500, 500, "Player", o_playerShip)
			with (o_gameManager.player) {
				shipID = o_gameManager.playerShipID
				thrusterID = o_gameManager.playerThrusterID
				maneuverID = o_gameManager.playerManeuverID
			}
			with(o_gameManager) {
				event_perform(ev_other, ev_user1)
			}
			break;
		case "Commodities":
			break;
		case "Job Board":
			break;
		case "Outfitting":
			break;
		case "Shipyard":
			break;
		case "Storage":
			break;
		case "Purchase":
			if (purchaseType == "Ship") {
				
			} else if (purchaseType == "Outfit") {
				
			}
			break;
		case "Accept":
			break;
	}
}