if ((speed == 0) || ((health < 25) && (distance_to_point(destinationX, destinationY) > 10))){
	destinationX = random_range(-5000, 5000);
	destinationY = random_range(-5000, 5000);
	if (health < 25){
		speed = 3;
	}
}
else if(distance_to_object(o_pirate) < 100){
	speed = 2;
	destinationX = o_pirate.x;
	destinationY = o_pirate.y;
}
else if (distance_to_point(destinationX, destinationY) < 100){
	destinationX = random_range(-5000, 5000);
	destinationY = random_range(-5000, 5000);
}
else{
	speed = 1;
}
friction = 0.1;
motion_add(point_direction(x, y, destinationX, destinationY)-90, 0.2);
image_angle = direction;