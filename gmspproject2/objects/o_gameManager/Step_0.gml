if(menu == "") {
	camera_set_view_pos(view_camera[0], player.x - 683, player.y - 384);
} else if(menu == "map") {
	if (keyboard_check(vk_left) || keyboard_check(ord("A"))) {
		dispX -= 3
	}
	if (keyboard_check(vk_right) || keyboard_check(ord("D"))) {
		dispX += 3
	}
	if (keyboard_check(vk_up) || keyboard_check(ord("W"))) {
		dispY -= 3
	}
	if (keyboard_check(vk_down) || keyboard_check(ord("S"))) {
		dispY += 3
	}
	
	camera_set_view_pos(view_camera[0], systemX[system] + dispX, systemY[system] + dispY)
	
} else {
	camera_set_view_pos(view_camera[0], 0, 0);
}