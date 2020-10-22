draw_self()

if(purchaseType == "") {
	image_xscale = 4.5
	image_yscale = 3
	draw_text_transformed(x - 100, y - 20, button, 2, 2, 0)
} else {
	image_xscale = 1.5
	image_yscale = 1.5
	draw_text_transformed(x - 280, y - 10, outfit, 1, 1, 0)	
	draw_text_transformed(x - 30, y - 10, "Buy", 1, 1, 0)	
}