//Create Player
if(player != 0) {
	instance_destroy(player)
}

player = instance_create_layer(500, 500, "Instances", o_playerShip)
with(player) {
	shipID = other.playerShipID
	thrusterID = other.playerThrusterID
	maneuverID = other.playerManeuverID = 0
}