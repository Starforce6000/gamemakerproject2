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
	player.x = room_width/2 + random_range(-300,300)
	player.y = room_height/2 + random_range(-300,300)
	player.speed = player.speed * 0.1;
	npcAmt = 0
	
	for(i = 0; i < missions; i++) {
		if((missionTypes[i] == "bounty") && (missionLocations[i] == system)) {
			npcShip = missionTargets[i]
			npcThruster = 0
			npcManeuver = 1
			npcs[npcAmt] = instance_create_layer(irandom_range(1000,4000),irandom_range(1000,4000),"Ships",o_BountyNPC)
			npcAmt++
		}
	}
}