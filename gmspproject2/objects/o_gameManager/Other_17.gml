/// @description JUMP SYSTEMS
if((selected != -1) && (inRange == true)) {
	for(i = 0; i < npcAmt; i++) {
		instance_destroy(npcs[i])	
	}
	system = selected
	room_goto(systemRoom[system])
	selected = -1
	day += 1
	if(day == 31) {
		month += 1
		day = 1
		if(month == 13) {
			year += 1
			month = 1
		}
	}
	for(i = 0; i < npcAmt; i++) {
		instance_destroy(npcs[i])	
	}
	for(i = 0; i < turretAmt; i++) {
		if(spawnedTurrets[i] != 0) {
			if(spawnedTurrets[i].ship != player) {
				instance_destroy(spawnedTurrets[i])	
			}
		}
	}
	npcAmt = 0
	turretAmt = turretsEquipped
	
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
	
	player.x = room_width/2 + random_range(-300,300)
	player.y = room_height/2 + random_range(-300,300)
	player.speed = player.speed * 0.1;
	npcAmt = 0
	
	for(i = 0; i < missions; i++) {
		if((missionTypes[i] == "bounty") && (missionLocations[i] == system)) {
			npcShip = missionTargets[i]
			if(o_shipManager.shipSize[missionTargets[i]] == "medium") {
				npcThruster = 2
				npcManeuver = 3
				npcShieldHP = 500
			} else if(o_shipManager.shipSize[missionTargets[i]] == "large") {
				npcThruster = 4
				npcManeuver = 5
				npcShieldHP = 1500
			} else {
				npcThruster = 0
				npcManeuver = 1
				npcShieldHP = 250
			}
			aiType = "Bounty"
			npcs[npcAmt] = instance_create_layer(irandom_range(1000,4000),irandom_range(1000,4000),"Ships",o_bountyNPC)
			with(npcs[npcAmt]) {
				event_perform(ev_other, ev_user2)	
			}
			npcs[npcAmt].missionNum = i
			npcAmt++
		}
	}
}