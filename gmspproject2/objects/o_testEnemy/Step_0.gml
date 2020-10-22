var inst = instance_nearest(x,y,o_testPlayer);
if(inst != noone){
	speed = 2.5;
	direction = point_direction(x,y,inst.x,inst.y);
	image_angle = direction;
}