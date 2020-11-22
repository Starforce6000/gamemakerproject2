/// @description ENTER SHIPYARD
menu = "shipyard"

for(i = 0; i < 6; i++) {
	instance_destroy(menuButton[i])
}

menuButton[0] = instance_create_layer(1150, 700, "UI", o_button)
menuButton[0].button = "Exit"
menuButton[1] = instance_create_layer(1150, 600, "UI", o_button)
menuButton[1].button = "Purchase"
menuButton[2] = instance_create_layer(800, 700, "UI", o_button)
menuButton[2].button = "Sell"

pos = 50
buttonCount = 0
menuDividers[0] = instance_create_layer(100, pos, "UI", o_divider)
menuDividers[0].image_index = 3
menuDividers[0].image_xscale = 3
menuDividers[0].image_yscale = 3
pos += 55;
for(i = 0; i < o_shipManager.ships; i++) {
	if(o_shipManager.shipSize[i] == "small") {
		subMenuButton[buttonCount] = instance_create_layer(250, pos, "UI", o_button)
		subMenuButton[buttonCount].buttonID = buttonCount
		subMenuButton[buttonCount].purchaseType = "Ship"
		subMenuButton[buttonCount].button = "Selector"
		subMenuButton[buttonCount].itemID = i
		subMenuButton[buttonCount].item = o_shipManager.shipNames[i]
		pos += 38
		buttonCount++
	}
}
pos += 15
menuDividers[1] = instance_create_layer(100, pos, "UI", o_divider)
menuDividers[1].image_index = 4
menuDividers[1].image_xscale = 3
menuDividers[1].image_yscale = 3
pos += 55;
for(i = 0; i < o_shipManager.ships; i++) {
	if(o_shipManager.shipSize[i] == "medium") {
		subMenuButton[buttonCount] = instance_create_layer(250, pos, "UI", o_button)
		subMenuButton[buttonCount].buttonID = buttonCount
		subMenuButton[buttonCount].purchaseType = "Ship"
		subMenuButton[buttonCount].button = "Selector"
		subMenuButton[buttonCount].itemID = i
		subMenuButton[buttonCount].item = o_shipManager.shipNames[i]
		pos += 38
		buttonCount++
	}
}
pos += 15
menuDividers[2] = instance_create_layer(100, pos, "UI", o_divider)
menuDividers[2].image_index = 5
menuDividers[2].image_xscale = 3
menuDividers[2].image_yscale = 3
pos += 55;
for(i = 0; i < o_shipManager.ships; i++) {
	if(o_shipManager.shipSize[i] == "large") {
		subMenuButton[buttonCount] = instance_create_layer(250, pos, "UI", o_button)
		subMenuButton[buttonCount].buttonID = buttonCount
		subMenuButton[buttonCount].purchaseType = "Ship"
		subMenuButton[buttonCount].button = "Selector"
		subMenuButton[buttonCount].itemID = i
		subMenuButton[buttonCount].item = o_shipManager.shipNames[i]
		pos += 38
		buttonCount++
	}
}