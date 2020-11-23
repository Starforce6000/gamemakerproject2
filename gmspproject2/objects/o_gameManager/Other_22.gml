/// @description SPAWN NPC
random_set_seed(current_time)
randomSpawnType = irandom_range(0,100)
if(randomSpawnType <= 40) {
	npcThruster = 0
	npcManeuver = 3
	npcShieldHP = 500
	npcShip = 4
	aiType = "Lander"
	npcs[npcAmt] = instance_create_layer(irandom_range(2000,3000), irandom_range(2000,3000), "Ships", o_civilianNPC)
} else if(randomSpawnType <= 60) {
	npcThruster = 0
	npcManeuver = 3
	npcShieldHP = 500
	npcShip = 4
	aiType = "Warper"
	npcs[npcAmt] = instance_create_layer(irandom_range(2000,3000), irandom_range(2000,3000), "Ships", o_civilianNPC)
} else if(randomSpawnType <= 80) {
	randomSpawnType = irandom_range(0,10)
	if(randomSpawnType <= 4) {
		npcThruster = 0
		npcManeuver = 3
		npcShieldHP = 250
		npcShip = 11
		aiType = "Patroller"
		npcs[npcAmt] = instance_create_layer(irandom_range(2000,3000), irandom_range(2000,3000), "Ships", o_navyNPC)
		with(npcs[npcAmt]) {
			event_perform(ev_other, ev_user2)	
		}
	} else if(randomSpawnType <= 8) {
		npcThruster = 0
		npcManeuver = 1
		npcShieldHP = 500
		npcShip = 9
		aiType = "Patroller"
		npcs[npcAmt] = instance_create_layer(irandom_range(2000,3000), irandom_range(2000,3000), "Ships", o_navyNPC)
		with(npcs[npcAmt]) {
			event_perform(ev_other, ev_user2)	
		}
	} else {
		npcThruster = 0
		npcManeuver = 3
		npcShieldHP = 1500
		npcShip = 7
		aiType = "Patroller"
		npcs[npcAmt] = instance_create_layer(irandom_range(2000,3000), irandom_range(2000,3000), "Ships", o_navyNPC)
		with(npcs[npcAmt]) {
			event_perform(ev_other, ev_user2)	
		}
	}
} else {
	randomSpawnShip = irandom_range(0,o_shipManager.ships - 1)
	npcShip = randomSpawnShip
	if(o_shipManager.shipSize[randomSpawnShip] == "medium") {
		npcThruster = 2
		npcManeuver = 3
		npcShieldHP = 500
	} else if(o_shipManager.shipSize[randomSpawnShip] == "large") {
		npcThruster = 4
		npcManeuver	= 5
		npcShieldHP = 1500
	} else {
		npcThruster = 0
		npcManeuver = 1
		npcShieldHP = 250
	}
	aiType = "Pirater"
	npcs[npcAmt] = instance_create_layer(irandom_range(2000,3000),irandom_range(2000,3000),"Ships",o_pirateNPC)
	with(npcs[npcAmt]) {
		event_perform(ev_other, ev_user2)	
	}
}
npcAmt++
				