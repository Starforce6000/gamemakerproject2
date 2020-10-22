//Draw ship
draw_self()

//Draw engines
sprThrust = 0
if(thrust) { sprThrust = 1}
sprManeuver = 0
if(thrustL && !thrustR) { sprManeuver = 1 }
if(!thrustL && thrustR) { sprManeuver = 2 }

draw_sprite_ext(plrThrust, sprThrust, x, y, 1, 1, image_angle, c_white, 1)
draw_sprite_ext(plrManeuver, sprManeuver, x, y, 1, 1, image_angle, c_white, 1)