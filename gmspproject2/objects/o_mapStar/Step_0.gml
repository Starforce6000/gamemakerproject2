if(mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id)) {
	if(o_gameManager.selected == systemID) {
		o_gameManager.selected = -1	
	} else if(o_gameManager.system != systemID) {
		distance = sqrt(power((o_gameManager.systemX[o_gameManager.system] - x),2) + power((o_gameManager.systemY[o_gameManager.system] - y),2))
		if(distance <= 128) {
			o_gameManager.inRange = true
		} else {
			o_gameManager.inRange = false
		}
		o_gameManager.selected = systemID
	}
}
if(o_gameManager.selected = systemID) {
	image_index = initialIndex + 1
} else {
	image_index = initialIndex	
}