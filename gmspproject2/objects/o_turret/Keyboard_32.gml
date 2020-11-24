/// @description FIRE TURRET

if(playerTurret && untilNextShot <= 0) {
	if(ship.shipEnergy >= o_shipManager.weaponEnergyUse[turretType]) {
		untilNextShot = cooldown
		shot = instance_create_layer(x, y, "Projectiles", o_shot)
		shot.sprite_index = o_shipManager.projectileSprites[turretType]
		shot.shield = o_shipManager.damageShields[turretType]
		shot.hull = o_shipManager.damageHull[turretType]
		shot.lifetime = o_shipManager.lifetime[turretType] * room_speed
		shot.direction = image_angle
		shot.image_angle = image_angle
		shot.image_xscale = 0.6
		shot.image_yscale = 0.6
		shot.speed = o_shipManager.projectileSpeed[turretType]
		shot.owner = ship
		
		ship.shipEnergy -= o_shipManager.weaponEnergyUse[turretType]
	}
}