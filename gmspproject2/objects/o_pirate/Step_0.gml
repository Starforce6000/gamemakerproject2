if ((speed == 0) || ((health < 25) && (distance_to_point(destinationX, destinationY) > 10))){
	destinationX = random_range(-5000, 5000);
	destinationY = random_range(-5000, 5000);
	if (health < 25){
		speed = 3;
	}
}
else if (distance_to_object(o_navy) < 100){
	speed = 2;
}
else if (distance_to_object(o_playerShip) < 100){
	destinationX = o_playerShip.x;
	destinationY = o_playerShip.y;
	motion_add(random(360), 0.1);
	speed = 2;
}
else if (distance_to_object(o_merchant) < 100){
	destinationX = o_merchant.x;
	destinationY = o_merchant.y;
	motion_add(random(360), 0.1);
	speed = 2;
}
else if (distance_to_object(o_civilian) < 100){
	destinationX = o_civilian.x;
	destinationY = o_civilian.y;
	motion_add(random(360), 0.1);
	speed = 2;
}
else if (distance_to_point(destinationX, destinationY) < 100){
	destinationX = random_range(-5000, 5000);
	destinationY = random_range(-5000, 5000);
}
else{
	speed = 1.5;
}
friction = 0.1;
motion_add(point_direction(x, y, destinationX, destinationY)-90, 0.2);
image_angle = direction;