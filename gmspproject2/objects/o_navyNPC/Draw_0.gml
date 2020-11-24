if(o_gameManager.menu == "") {
	//Draw ship
	draw_self()
	//Draw Shield Bar
	draw_rectangle_color(x - 70, y + 40, x + (140 * shieldHP / (maxShieldHP)) - 70, y + 50, c_blue, c_blue, c_blue, c_blue, false)
	//Draw Health Bar
	draw_rectangle_color(x - 70, y + 50, x + (140 * hullHP / (maxHullHP)) - 70, y + 60, c_orange, c_orange, c_orange, c_orange, false)
}

if(warpOutCounter > 0) {
	shader_set(sh_white)
	draw_sprite_ext(o_shipManager.shipSprites[shipID], 0,x,y, 1 + warpOutCounter / (6 * room_speed), 1 + warpOutCounter / (6 * room_speed),image_angle,c_white,warpOutCounter / (0.5*room_speed))
	shader_reset()
}

enemyDirection = point_direction(o_gameManager.player.x,o_gameManager.player.y,x,y)
draw_sprite_ext(s_direction, 0, o_gameManager.player.x, o_gameManager.player.y, 3, 3, enemyDirection, c_blue, 1)