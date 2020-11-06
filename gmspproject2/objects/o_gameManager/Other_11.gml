/// @description EXIT STATION
menu = ""

for(i = 0; i < 6; i++) {
	instance_destroy(menuButton[i])
}

player = instance_create_layer(500, 500, "Player", o_playerShip)
testStation = instance_create_layer(1000, 250, "Stations", o_testStation)

for(i = 0; i < gunsEquipped; i++) {
	player.guns[i] = o_shipManager.weaponNames[playerGunports[i]]
}
for(i = 0; i < turretsEquipped; i++) {
	player.turrets[i] = o_shipManager.weaponNames[playerTurretports[i]]
}