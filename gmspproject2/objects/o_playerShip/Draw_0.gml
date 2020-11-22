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
	printStr = string(system) + " system - " + month + " " + string(day) + ", " + string(year)
	draw_text(x - 650, y + 350, printStr)
	
	//Draw jump progress bar
	if(jumping) {
		draw_rectangle(x - 71, y + 39, x + 71, y + 51, false)
		draw_rectangle_color(x - 70, y + 40, x + (140 * systemJumpTimer / (3 * room_speed)) - 70, y + 50, c_aqua, c_aqua, c_aqua, c_aqua, false)
		draw_rectangle_color(x - 70, y + 40, x + (140 * systemJumpTimer / (3 * room_speed)) - 70, y + 50, c_black, c_black, c_black, c_black, true)
	}
	
	//Draw arrow towards hostile ships
	for(i = 0; i < o_gameManager.npcAmt; i++) {
		if(o_gameManager.npcs[i].hostile == true) {
			enemyDirection = point_direction(x,y,o_gameManager.npcs[i].x,o_gameManager.npcs[i].y)
			draw_sprite_ext(s_direction, 0, x, y, 3, 3, enemyDirection, c_white, 1)
		}
	}
}