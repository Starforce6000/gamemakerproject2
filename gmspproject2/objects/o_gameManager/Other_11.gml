/// @description UNDOCK FROM STATION
menu = ""

for(i = 0; i < 6; i++) {
	instance_destroy(menuButton[i])
}

player = instance_create_layer(500, 500, "Player", o_playerShip)
/*
for(i = 0; i < gunsEquipped; i++) {
	player.guns[i] = o_shipManager.weaponNames[playerGunports[i]]
}
for(i = 0; i < turretsEquipped; i++) {
	player.turrets[i] = o_shipManager.weaponNames[playerTurretports[i]]
}
*/
player.x = dockStation.x
player.y = dockStation.y
player.image_xscale = 0.7
player.image_yscale = 0.7

with(player) {
	event_perform(ev_other, ev_user2)	
}