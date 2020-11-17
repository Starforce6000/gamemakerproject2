if(o_gameManager.menu == "Outfits") {
	if (keyboard_check(vk_up) || keyboard_check(ord("W"))) {
		y += (300 / room_speed)
	}
	if (keyboard_check(vk_down) || keyboard_check(ord("S"))) {
		y -= (300 / room_speed)
	}
}