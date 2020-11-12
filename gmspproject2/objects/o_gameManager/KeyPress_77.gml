if(menu == "map") {
	menu = ""
	for(i = 0; i < systemCount; i++) {
		instance_destroy(mapStars[i])
	}
	selected = -1
	with(o_playerShip) {
		event_perform(ev_other, ev_user1)
	}
} else {
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
}