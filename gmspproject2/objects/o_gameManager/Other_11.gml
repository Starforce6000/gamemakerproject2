/// @description UNDOCK FROM STATION
menu = ""

for(i = 0; i < 6; i++) {
	instance_destroy(menuButton[i])
}

player = instance_create_layer(500, 500, "Player", o_playerShip)

player.x = dockStation.x
player.y = dockStation.y
player.image_xscale = 0.7
player.image_yscale = 0.7

with(player) {
	event_perform(ev_other, ev_user2)	
}

for(i = 0; i < 500; i++) {
	star = instance_create_layer(0, 0,"Bodies",o_star) 
	star.x = irandom_range(player.x - 5000, player.x + 5000)
	star.y = irandom_range(player.y - 5000, player.y + 5000)
	starImg = irandom_range(0,10)
	if(starImg <= 2) {
		star.sprite_index = s_tinyBlueStar
	} else if(starImg <= 5) {
		star.sprite_index = s_tinyYellowStar
	} else {
		star.sprite_index = s_tinyWhiteStar
	}
	starScale = random_range(0.5,2)
	star.image_xscale = starScale
	star.image_yscale = starScale
}

payUI = instance_create_layer(0, 0, "UI", o_payoutUI)