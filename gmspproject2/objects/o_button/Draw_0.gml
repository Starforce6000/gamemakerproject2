if(button != "Selector") {
	image_xscale = 4.5
	image_yscale = 3
} else {
	sprite_index = s_outfitButton
	image_xscale = 8.5
	image_yscale = 1.25
	if(o_gameManager.selected == buttonID) { 
		image_index = 1
	} else {
		image_index = 0
	}
}
draw_self()
if(button == "Purchase") {
	draw_sprite_ext(s_box, 0, x-175, y-300, 10, 8, 0, c_white, 1)
	draw_text_transformed(x-450, y- 525, o_gameManager.purchaseName, 1.5, 1.5, 0)
}

if(button != "Selector") {
	draw_text_transformed(x - 100, y - 20, button, 2, 2, 0)
} else {
	draw_text_transformed(x - 225, y - 15, item, 1, 1.25, 0)
}