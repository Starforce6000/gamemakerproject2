if (speed == 0){
	destinationX = random_range(-5000, 5000);
	destinationY = random_range(-5000, 5000);
}
else if ((distance_to_object(o_pirate) < 50) || (health < 100)){
	speed = 3;
}
else if (distance_to_point(destinationX, destinationY) < 100){
	destinationX = random_range(-5000, 5000);
	destinationY = random_range(-5000, 5000);
}
else{
	speed = 1.5;
}
direction = point_direction(x, y, destinationX, destinationY);
image_angle = direction;