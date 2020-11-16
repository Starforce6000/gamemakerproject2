/// @description JUMP SYSTEM

if((o_gameManager.selected != -1) && (o_gameManager.menu == "") && (o_gameManager.inRange)) {
	systemJumpTimer = 3 * room_speed
	jumping = true
}