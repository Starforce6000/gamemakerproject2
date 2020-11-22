shipID = o_gameManager.playerShipID
thrusterID = o_gameManager.playerThrusterID
maneuverID = o_gameManager.playerManeuverID

acceleration = o_shipManager.thrusterStats[thrusterID]
turn = o_shipManager.thrusterStats[maneuverID]
mass = o_shipManager.speedModifier[shipID]

class = o_shipManager.shipNames[shipID]

sprite_index = o_shipManager.shipSprites[shipID]
plrThrust = o_shipManager.thrusterSprites[thrusterID]

guns = [-1]
turrets = [-1]

thrust = false
pauseSpeed = 0

systemJumpTimer = -1
jumping = false

target = -1