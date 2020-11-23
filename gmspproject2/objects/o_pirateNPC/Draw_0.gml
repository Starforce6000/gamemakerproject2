if(o_gameManager.menu == "") {
	//Draw ship
	draw_self()
	//Draw Shield Bar
	draw_rectangle_color(x - 70, y + 40, x + (140 * shieldHP / (maxShieldHP)) - 70, y + 50, c_blue, c_blue, c_blue, c_blue, false)
	//Draw Health Bar
	draw_rectangle_color(x - 70, y + 50, x + (140 * hullHP / (maxHullHP)) - 70, y + 60, c_orange, c_orange, c_orange, c_orange, false)
}

enemyDirection = point_direction(o_gameManager.player.x,o_gameManager.player.y,x,y)
draw_sprite_ext(s_direction, 0, o_gameManager.player.x, o_gameManager.player.y, 3, 3, enemyDirection, c_red, 1)