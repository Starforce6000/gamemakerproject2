if(menu == "map") {
	draw_sprite_ext(s_jumpRange, 0, systemX[system], systemY[system], 2, 2, 0, c_white, .5)	
	
	if(selected != -1) {
		if(inRange) {
			draw_line_width(systemX[system], systemY[system], systemX[selected], systemY[selected], 2)
		} else {
			draw_line_width_color(systemX[system], systemY[system], systemX[selected], systemY[selected], 2, c_red, c_red)
		}
	}
}