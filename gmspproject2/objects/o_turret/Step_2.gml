x = ship.x + lengthdir_y(dispY, ship.image_angle) + lengthdir_x(dispX, ship.image_angle)
y = ship.y + lengthdir_y(dispY, ship.image_angle + 90) + lengthdir_y(dispX, ship.image_angle)
if(target != -1) {
	turretDirection = point_direction(x, y, o_gameManager.npcs[target].x, o_gameManager.npcs[target].y)
	image_angle = turretDirection
} else {
	image_angle = ship.image_angle
}
untilNextShot--