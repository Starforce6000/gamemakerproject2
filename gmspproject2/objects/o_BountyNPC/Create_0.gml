shipID = o_gameManager.npcShip
thrusterID = o_gameManager.npcThruster
maneuverID = o_gameManager.npcManeuver
npcID = o_gameManager.npcAmt

acceleration = o_shipManager.thrusterStats[thrusterID]
turn = o_shipManager.thrusterStats[maneuverID]
mass = o_shipManager.speedModifier[shipID]

class = o_shipManager.shipNames[shipID]

sprite_index = o_shipManager.shipSprites[shipID]

guns = [-1]
turrets = [-1]

thrust = false
pauseSpeed = 0

hostile = true
firing = false
pauseSpeed = 0
target = -1
lastTarget = -1
aiType = o_gameManager.aiType
missionNum = 0

image_xscale = 0.7
image_yscale = 0.7

shieldHP = o_gameManager.npcShieldHP
shieldChargeRate = shieldHP / 20
maxShieldHP = shieldHP
hullHP = o_shipManager.baseHP[shipID]
maxHullHP = hullHP
chargeDelay = 0