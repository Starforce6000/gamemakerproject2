if(o_gameManager.menu == "") {
	x = ship.x + lengthdir_y(dispY, ship.image_angle) + lengthdir_x(dispX, ship.image_angle)
	y = ship.y + lengthdir_y(dispY, ship.image_angle + 90) + lengthdir_y(dispX, ship.image_angle)
	image_angle = ship.image_angle
	untilNextShot--
	
	if(ship != o_gameManager.player && untilNextShot <= 0) {
		if(ship.firing) {
			untilNextShot = cooldown
			shot = instance_create_layer(x, y, "Projectiles", o_shot)
			shot.sprite_index = o_shipManager.projectileSprites[gunType]
			shot.shield = o_shipManager.damageShields[gunType]
			shot.hull = o_shipManager.damageHull[gunType]
			shot.lifetime = o_shipManager.lifetime[gunType] * room_speed
			shot.direction = image_angle
			shot.image_angle = image_angle
			shot.image_xscale = 0.6
			shot.image_yscale = 0.6
			shot.speed = o_shipManager.projectileSpeed[gunType]
			shot.owner = ship
		}
	}
}

