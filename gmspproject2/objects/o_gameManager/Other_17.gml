/// @description JUMP SYSTEMS
if((selected != -1) && (inRange == true)) {
	system = selected
	room_goto(systemRoom[system])
	selected = -1
	day += 1
	if(day == 31) {
		month += 1
		day = 1
		if(month == 13) {
			year += 1
			month = 1
		}
	}
}