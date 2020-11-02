//Draw ship
draw_self()

//Draw engines
sprThrust = 0
if(thrust) { sprThrust = 1}

draw_sprite_ext(plrThrust, sprThrust, x, y, 1, 1, image_angle, c_white, 1)