shipID = 0
thrusterID = 0
maneuverID = 0

acceleration = o_shipManager.thrusterAccel[thrusterID]
turn = o_shipManager.maneuverRate[maneuverID]

class = o_shipManager.shipNames[shipID]

sprite_index = o_shipManager.shipSprites[shipID]
plrThrust = o_shipManager.thrusterSprites[thrusterID]
plrManeuver = o_shipManager.maneuverSprites[maneuverID]

thrustL = false
thrustR = false
thrust = false