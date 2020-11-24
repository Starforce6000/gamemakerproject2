shipID = o_gameManager.npcShip
thrusterID = o_gameManager.npcThruster
maneuverID = o_gameManager.npcManeuver
npcID = o_gameManager.npcAmt

acceleration = o_shipManager.thrusterStats[thrusterID]
turn = o_shipManager.thrusterStats[maneuverID]
mass = o_shipManager.speedModifier[shipID]

class = o_shipManager.shipNames[shipID]

sprite_index = o_shipManager.shipSprites[shipID]

thrust = false
pauseSpeed = 0

pauseSpeed = 0
aiType = o_gameManager.aiType

image_xscale = 0.7
image_yscale = 0.7

shieldHP = o_gameManager.npcShieldHP
shieldChargeRate = shieldHP / 20
maxShieldHP = shieldHP
hullHP = o_shipManager.baseHP[shipID]
maxHullHP = hullHP
chargeDelay = 0

warpCharge = -6 * room_speed
docktimer = -1