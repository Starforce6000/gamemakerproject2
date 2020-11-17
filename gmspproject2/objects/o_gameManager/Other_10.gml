/// @description START GAME

menu = "station"

menuButton[0] = instance_create_layer(200, 500, "UI", o_button)
menuButton[0].button = "Undock"

menuButton[1] = instance_create_layer(1150, 500, "UI", o_button)
menuButton[1].button = "Skills"

menuButton[2] = instance_create_layer(200, 600, "UI", o_button)
menuButton[2].button = "Commodities"

menuButton[3] = instance_create_layer(1150, 600, "UI", o_button)
menuButton[3].button = "Outfitting"

menuButton[4] = instance_create_layer(200, 700, "UI", o_button)
menuButton[4].button = "Job Board"

menuButton[5] = instance_create_layer(1150, 700, "UI", o_button)
menuButton[5].button = "Shipyard"

dockStation = o_station