var shoot = instance_create_layer(x, y, "Bullets", o_testBulletPlayer);
with (shoot){
	direction = other.image_angle + random_range(-3, 3);
	speed = 10;
	image_angle = direction;
}