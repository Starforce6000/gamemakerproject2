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
			pos = 100
			for(i = 0; i < o_shipManager.outfits; i++) {
				outfitButton = instance_create_layer(300, pos, "UI", o_button)
				outfitButton.button = "Purchase"
				outfitButton.purchaseType = "Outfit"
				outfitButton.outfitID = i
				outfitButton.price = 0
				outfitButton.outfit = o_shipManager.outfitNames[outfitButton.outfitID]
				pos += 50;
			}
			break;
		case "Shipyard":
			break;
		case "Storage":
			break;
		case "Purchase":
			if (purchaseType == "Ship") {
				
			} else if (purchaseType == "Outfit") {
				o_gameManager.playerModules[moduleCount] = outfitID
			}
			break;
		case "Accept":
			break;
	}
}