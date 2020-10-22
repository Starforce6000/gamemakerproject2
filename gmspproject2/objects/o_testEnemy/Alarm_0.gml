var shoot = instance_create_layer(x, y, "Bullets", o_testBulletEnemy);
with (shoot){
	direction = point_direction(x, y, o_testPlayer.x, o_testPlayer.y);
	speed = 10;
	image_angle = direction;
}
alarm[0] = room_speed;