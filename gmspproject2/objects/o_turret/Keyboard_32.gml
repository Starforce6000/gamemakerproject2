/// @description FIRE TURRET

if(playerTurret && untilNextShot <= 0) {
	untilNextShot = cooldown
	shot = instance_create_layer(x, y, "Projectiles", o_shot)
	shot.direction = image_angle
	shot.image_angle = image_angle
	shot.speed = 15
	shot.owner = ship
}