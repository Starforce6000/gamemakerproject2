if(purchaseType == "") {
	image_xscale = 4.5
	image_yscale = 3
} else if(purchaseType == "Outfit") {
	sprite_index = s_outfitButton
	image_xscale = 8.5
	image_yscale = 1.25
	if(selected) { 
		image_index = 1
	} else {
		image_index = 0
	}
}

draw_self()

if(purchaseType == "") {
	draw_text_transformed(x - 100, y - 20, button, 2, 2, 0)
} else if(purchaseType == "Outfit") {
	draw_text_transformed(x - 225, y - 15, outfit, 1, 1.25, 0)
}