/// @description ENTER OUTFITS
menu = "Outfits"

for(i = 0; i < 6; i++) {
	instance_destroy(menuButton[i])
}

menuButton[0] = instance_create_layer(1150, 700, "UI", o_button)
menuButton[0].button = "Exit"
menuButton[1] = instance_create_layer(1150, 600, "UI", o_button)
menuButton[1].button = "Purchase"

pos = 50
buttonCount = 0
menuDividers[0] = instance_create_layer(100, pos, "UI", o_divider)
menuDividers[0].image_index = 1
menuDividers[0].image_xscale = 3
menuDividers[0].image_yscale = 3
pos += 60;
for(i = 0; i < o_shipManager.thrusterOutfits; i++) {
	subMenuButton[buttonCount] = instance_create_layer(250, pos, "UI", o_button)
	subMenuButton[buttonCount].buttonID = buttonCount
	subMenuButton[buttonCount].purchaseType = "Thruster"
	subMenuButton[buttonCount].button = "Selector"
	subMenuButton[buttonCount].itemID = i
	subMenuButton[buttonCount].item = o_shipManager.thrusterNames[i]
	pos += 40
	buttonCount++
}
pos += 20
menuDividers[1] = instance_create_layer(100, pos, "UI", o_divider)
menuDividers[1].image_index = 2
menuDividers[1].image_xscale = 3
menuDividers[1].image_yscale = 3
pos += 60
for(i = 0; i < o_shipManager.weaponOutfits; i++) {
	subMenuButton[buttonCount] = instance_create_layer(250, pos, "UI", o_button)
	subMenuButton[buttonCount].buttonID = buttonCount
	subMenuButton[buttonCount].purchaseType = "Weapon"
	subMenuButton[buttonCount].button = "Selector"
	subMenuButton[buttonCount].itemID = i
	subMenuButton[buttonCount].item = o_shipManager.weaponNames[i]
	pos += 40
	buttonCount++
}
pos += 20
menuDividers[2] = instance_create_layer(100, pos, "UI", o_divider)
menuDividers[2].image_index = 0
menuDividers[2].image_xscale = 3
menuDividers[2].image_yscale = 3
pos += 60
for(i = 0; i < o_shipManager.miscOutfits; i++) {
	subMenuButton[buttonCount] = instance_create_layer(250, pos, "UI", o_button)
	subMenuButton[buttonCount].buttonID = buttonCount
	subMenuButton[buttonCount].purchaseType = "Misc"
	subMenuButton[buttonCount].button = "Selector"
	subMenuButton[buttonCount].itemID = i
	subMenuButton[buttonCount].item = o_shipManager.miscNames[i]
	pos += 40
	buttonCount++
}
purchaseID = -1
selected = -1