if(o_gameManager.menu == "") {
	//Draw ship
	draw_self()
	
	//Draw engines (DISABLED)
	/*
	if(!jumping) {
		draw_sprite_ext(plrThrust, thrust, x, y, 1, 1, image_angle, c_white, 1)
	}
	*/
	
	//Draw docking helper
	if(place_meeting(x,y,o_station) && (speed <= 0.25) && !jumping) {
		draw_sprite_ext(s_box, 0, x, y + 110, 3, .5, 0, c_white, 1)
		draw_text(x - 77,y + 100, "Press 'L' To Dock")
	}

	//Draw M/D/Y
	month = o_gameManager.monthName[o_gameManager.month - 1]
	system = o_gameManager.systemName[o_gameManager.system]
	day = o_gameManager.day
	year = o_gameManager.year
	printStr = string(system) + " system - " + month + " " + string(day) + ", " + string(year) + "     Credits: " + string(o_gameManager.playerCredits)
	draw_text(x - 650, y + 350, printStr)
	
	//Draw jump progress bar
	if(jumping) {
		draw_rectangle_color(x - 70, y + 70, x + (140 * systemJumpTimer / (3 * room_speed)) - 70, y + 80, c_lime, c_lime, c_lime, c_lime, false)
	}
	
	//Draw Shield Bar
	draw_rectangle_color(x - 70, y + 40, x + (140 * shieldHP / (maxShieldHP)) - 70, y + 50, c_blue, c_blue, c_blue, c_blue, false)
	//Draw Health Bar
	draw_rectangle_color(x - 70, y + 50, x + (140 * hullHP / (maxHullHP)) - 70, y + 60, c_orange, c_orange, c_orange, c_orange, false)
}