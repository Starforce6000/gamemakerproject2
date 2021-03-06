shipID = o_gameManager.playerShipID
thrusterID = o_gameManager.playerThrusterID
maneuverID = o_gameManager.playerManeuverID

acceleration = o_shipManager.thrusterStats[thrusterID]
turn = o_shipManager.thrusterStats[maneuverID]
mass = o_shipManager.speedModifier[shipID]

class = o_shipManager.shipNames[shipID]

sprite_index = o_shipManager.shipSprites[shipID]

guns = [-1]
turrets = [-1]

thrust = false
pauseSpeed = 0
firing = false
systemJumpTimer = -1
jumping = false
aiType = "player"
target = -1
alive = true

shieldHP = 0
shieldChargeRate = 0
for(i = 0; i < o_gameManager.modulesEquipped; i++) {
	shieldHP += o_shipManager.shieldGeneration[o_gameManager.playerModules[i]]
	shieldChargeRate += o_shipManager.shieldGeneration[o_gameManager.playerModules[i]] / 60
}
maxShieldHP = shieldHP
hullHP = o_shipManager.baseHP[shipID]
maxHullHP = hullHP
chargeDelay = 0

maxEnergy = 0
energyGeneration = 0
for(i = 0; i < o_gameManager.modulesEquipped; i++) {
	maxEnergy += o_shipManager.energyStorage[o_gameManager.playerModules[i]]
	energyGeneration += o_shipManager.energyStorage[o_gameManager.playerModules[i]]
}
shipEnergy = maxEnergy

invincible = false