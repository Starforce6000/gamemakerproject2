if(o_gameManager.menu == "") {
	x = ship.x + lengthdir_y(dispY, ship.image_angle) + lengthdir_x(dispX, ship.image_angle)
	y = ship.y + lengthdir_y(dispY, ship.image_angle + 90) + lengthdir_y(dispX, ship.image_angle)
	if(target != -1 && ship == o_gameManager.player && o_gameManager.npcs[target] != 0) {
		turretDirection = point_direction(x, y, o_gameManager.npcs[target].x, o_gameManager.npcs[target].y)
		image_angle = turretDirection
	} else if(target != -1 && ship != o_gameManager.player) {
		turretDirection = point_direction(x, y, target.x,target.y)
		image_angle = turretDirection
    } else {
		image_angle = ship.image_angle
	}
	untilNextShot--
	
	if(ship != o_gameManager.player && untilNextShot <= 0) {
		if(target != -1) {
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
			shot.aiType = ship.aiType
		}
	}
}

