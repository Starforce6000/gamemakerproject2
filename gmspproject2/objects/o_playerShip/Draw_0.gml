//Draw ship
draw_self()

//Draw engines
draw_sprite_ext(plrThrust, thrust, x, y, 1, 1, image_angle, c_white, 1)

//Draw docking helper
if(place_meeting(x,y,o_station) && (speed <= 0.25)) {
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

//JUST FOR TESTING
/*
pos = 100
draw_text(100,pos,"WEAPONS EQUIPPED:")
pos += 20
for(i = 0; i < o_gameManager.gunsEquipped; i++) {
	draw_text(100, pos, guns[i])
	pos += 20
}
for(i = 0; i < o_gameManager.turretsEquipped; i++) {
	draw_text(100, pos, turrets[i])
	pos += 20
}
draw_text(100,pos,"MODULES EQUIPPED:")
pos += 20
for(i = 0; i < o_gameManager.modulesEquipped; i++) {
	draw_text(100, pos, o_shipManager.miscNames[o_gameManager.playerModules[i]])
	pos += 20
}
draw_text(100,pos,"ENGINES EQUIPPED:") 
pos += 20
draw_text(100, pos, o_shipManager.thrusterNames[thrusterID])
pos += 20
draw_text(100, pos, o_shipManager.thrusterNames[maneuverID])
*/