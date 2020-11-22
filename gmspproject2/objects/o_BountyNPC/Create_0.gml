shipID = o_gameManager.npcShip
thrusterID = o_gameManager.npcThruster
maneuverID = o_gameManager.npcManeuver

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

hostile = true

image_xscale = 0.7
image_yscale = 0.7