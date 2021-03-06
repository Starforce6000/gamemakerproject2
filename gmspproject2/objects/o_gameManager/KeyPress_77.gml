if(menu == "map") {
	menu = ""
	for(i = 0; i < systemCount; i++) {
		instance_destroy(mapStars[i])
	}
	with(o_playerShip) {
		event_perform(ev_other, ev_user1)
	}
	for(i = 0; i < npcAmt; i++) {
		with(npcs[i]) {
			event_perform(ev_other, ev_user1)	
		}
	}
} else if(menu == "") {
	if(player.jumping == false) {
		menu = "map"
		dispX = -683
		dispY = -384
		for(i = 0; i < systemCount; i++) {
			mapStars[i] = instance_create_layer(systemX[i], systemY[i], "UI", o_mapStar)
			if(systemInhabited[i]) {
				mapStars[i].initialIndex = 2
			}
			mapStars[i].image_xscale = 0.7
			mapStars[i].image_yscale = 0.7
			mapStars[i].systemID = i
		}
		with(o_playerShip) {
			event_perform(ev_other, ev_user0)
		}
		for(i = 0; i < npcAmt; i++) {
			with(npcs[i]) {
				event_perform(ev_other, ev_user0)	
			}
		}
	}
}