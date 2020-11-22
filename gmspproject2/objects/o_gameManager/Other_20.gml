/// @description ENTER COMMODITIES

for(i = 0; i < 6; i++) {
	instance_destroy(menuButton[i])
}

menuButton[0] = instance_create_layer(1150, 700, "UI", o_button)
menuButton[0].button = "Exit"
menuButton[1] = instance_create_layer(1150, 600, "UI", o_button)
menuButton[1].button = "Purchase"
menuButton[2] = instance_create_layer(800, 700, "UI", o_button)
menuButton[2].button = "Sell"

cargo = 0
for(i = 0; i < modulesEquipped; i++) {
	cargo += o_shipManager.cargoCapacity[playerModules[i]]
}
cargoRemaining = cargo
cargoRemaining -= missionCargo

pos = 50
buttonCount = 0
for(i = 0; i < 8; i++) {
	cargoRemaining -= inCargo[i]
	subMenuButton[i] = instance_create_layer(250, pos, "UI", o_button)
	subMenuButton[i].button = "Selector";
	subMenuButton[i].purchaseType = "Commodity";
	subMenuButton[i].buttonID = i;
	buttonCount++
	pos += 40
}

menu = "Commodities"