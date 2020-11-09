//Draw ship
draw_self()

//Draw engines
draw_sprite_ext(plrThrust, thrust, x, y, 1, 1, image_angle, c_white, 1)




//JUST FOR TESTING

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