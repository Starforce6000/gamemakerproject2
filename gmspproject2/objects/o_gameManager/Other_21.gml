/// @description ENTER JOB BOARD

for(i = 0; i < 6; i++) {
	instance_destroy(menuButton[i])
}

menuButton[0] = instance_create_layer(1150, 700, "UI", o_button)
menuButton[0].button = "Exit"
menuButton[1] = instance_create_layer(1150, 600, "UI", o_button)
menuButton[1].button = "Accept"

cargo = 0
for(i = 0; i < modulesEquipped; i++) {
	cargo += o_shipManager.cargoCapacity[playerModules[i]]
}
cargoRemaining = cargo
cargoRemaining -= missionCargo

pos = 50
buttonCount = 0
for(i = 0; i < irandom_range(10, 15); i++) {
	subMenuButton[i] = instance_create_layer(250, pos, "UI", o_button)
	subMenuButton[i].button = "Selector"
	subMenuButton[i].buttonID = i;
	mission = irandom_range(0,100)
	if(mission < 70) {
		subMenuButton[i].missionType = "cargo"
		if(mission < 40) {
			subMenuButton[i].missionSize = "small"
		} else if(mission < 60) {
			subMenuButton[i].missionSize = "medium"
		} else {
			subMenuButton[i].missionSize = "large"
		}
	} else {
		subMenuButton[i].missionType = "bounty"
		if(mission < 87) {
			subMenuButton[i].missionSize = "small"
		} else if(mission < 97) {
			subMenuButton[i].missionSize = "medium"
		} else {
			subMenuButton[i].missionSize = "large"
		}
	}

	do {
		subMenuButton[i].location = irandom_range(0, systemCount - 1)
	} until(subMenuButton[i].location != system)
	
	if(subMenuButton[i].missionType = "cargo") {
		subMenuButton[i].cargoAmount = irandom_range(10, 50)
		if(subMenuButton[i].missionSize = "medium") {
			subMenuButton[i].cargoAmount *= 4
		}
		if(subMenuButton[i].missionSize = "large") {
			subMenuButton[i].cargoAmount *= 8
		}
	}
	
	if(subMenuButton[i].missionType = "bounty") {
		subMenuButton[i].pay = irandom_range(6000, 12000)
		subMenuButton[i].pay *= 2
		if(subMenuButton[i].missionSize = "medium") {
			subMenuButton[i].pay *= 5
		}
		if(subMenuButton[i].missionSize = "large") {
			subMenuButton[i].pay *= 10
		}
	} else {
		subMenuButton[i].pay = irandom_range(75,150) * subMenuButton[i].cargoAmount
	}
	
	pos += 40
	buttonCount++
}

menu = "Job Board"