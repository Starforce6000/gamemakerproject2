/// @description ENTER OUTFITS
menu = "outfits"

for(i = 0; i < 6; i++) {
	instance_destroy(menuButton[i])
}

menuButton[0] = instance_create_layer(1150, 700, "UI", o_button)
menuButton[0].button = "Exit"

pos = 50
buttonCount = 0
menuDividers[0] = instance_create_layer(100, pos, "UI", o_divider)
menuDividers[0].image_index = 1
menuDividers[0].image_xscale = 3;
menuDividers[0].image_yscale = 3;
pos += 60;
for(i = 0; i < o_shipManager.thrusterOutfits; i++) {
	outfitMenuButton[buttonCount] = instance_create_layer(250, pos, "UI", o_button)
	outfitMenuButton[buttonCount].purchaseType = "Outfit"
	outfitMenuButton[buttonCount].
	outfitMenuButton[buttonCount].outfitID = i
	outfitMenuButton[buttonCount].outfit = o_shipManager.thrusterNames[i]
	pos += 40
	buttonCount++
}

for(i = 0; i < o_shipManager.weaponOutfits; i++) {
	
}

for(i = 0; i < o_shipManager.miscOutfits; i++) {
	
}