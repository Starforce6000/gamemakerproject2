shipID = o_gameManager.playerShipID
thrusterID = o_gameManager.playerThrusterID
maneuverID = o_gameManager.playerManeuverID

acceleration = o_shipManager.thrusterStats[thrusterID]
turn = o_shipManager.thrusterStats[maneuverID]

class = o_shipManager.shipNames[shipID]

sprite_index = o_shipManager.shipSprites[shipID]
plrThrust = o_shipManager.thrusterSprites[thrusterID]
plrManeuver = o_shipManager.thrusterSprites[maneuverID]

guns = [0]
turrets = [0]

thrust = false