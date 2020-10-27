/// @description ENTER SHIPYARD
menu = "shipyard"

for(i = 0; i < 6; i++) {
	instance_destroy(menuButton[i])
}

menuButton[0] = instance_create_layer(1150, 700, "UI", o_button)
menuButton[0].button = "Exit"