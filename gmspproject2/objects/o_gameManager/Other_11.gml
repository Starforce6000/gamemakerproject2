menu = ""

for(i = 0; i < 6; i++) {
	instance_destroy(menuButton[i])
}

player = instance_create_layer(500, 500, "Player", o_playerShip)
with (player) {
	shipID = other.playerShipID
	thrusterID = other.playerThrusterID
	maneuverID = other.playerManeuverID
}