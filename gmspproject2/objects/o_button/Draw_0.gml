if(button != "Selector") {
	image_xscale = 4.5
	image_yscale = 3
} else {
	sprite_index = s_outfitButton
	image_xscale = 8.5
	image_yscale = 1.25
	if(o_gameManager.selected == buttonID) { 
		image_index = 1
	} else {
		image_index = 0
	}
}
draw_self()
if(button == "Purchase") {
	draw_sprite_ext(s_box, 0, x-175, y-300, 10, 8, 0, c_white, 1)
	draw_text_transformed(x-450, y-525, o_gameManager.purchaseName, 1.5, 1.5, 0)
	
	pos = 480
	if(o_gameManager.purchaseType == "Thruster") {
		cost = "Cost: " + string(o_shipManager.thrusterCost[o_gameManager.purchaseID])
		draw_text(x-450, y-pos, cost)
		pos -= 30
		space = "Outfit Space: " + string(o_shipManager.thrusterSpaceUse[o_gameManager.purchaseID])
		draw_text(x-450, y-pos, space)
		pos -= 30
		if(o_shipManager.thrusterType[o_gameManager.purchaseID] == "main") {
			draw_text(x-450, y-pos, "Type: Main Thruster")
			stats = "Acceleration Force: " + string(o_shipManager.thrusterStats[o_gameManager.purchaseID])
		} else {
			draw_text(x-450, y-pos, "Type: Maneuvering Thruster")
			stats = "Degrees/sec: " + string(o_shipManager.thrusterStats[o_gameManager.purchaseID])
		}
		pos -= 30
		draw_text(x-450, y-pos, stats)
	} else if(o_gameManager.purchaseType == "Weapon") {
		cost = "Cost: " + string(o_shipManager.weaponCost[o_gameManager.purchaseID])
		draw_text(x-450, y-pos, cost)
		pos -= 30
		space = "Outfit Space: " + string(o_shipManager.weaponSpaceUse[o_gameManager.purchaseID])
		draw_text(x-450, y-pos, space)
		pos -= 30
	} else if(o_gameManager.purchaseID != -1) {
		cost = "Cost: " + string(o_shipManager.outfitCost[o_gameManager.purchaseID])
		draw_text(x-450, y-pos, cost)
		pos -= 30
		space = "Outfit Space: " + string(o_shipManager.spaceUse[o_gameManager.purchaseID])
		draw_text(x-450, y-pos, space)
		pos -= 30
	}
	pos = 130
	credits = "Your Credits: " + string(o_gameManager.playerCredits)
	draw_text(x-450, y-pos, credits)
	pos -= 30
	remainingOutfitSpace = o_shipManager.outfitSpace[o_gameManager.playerShipID]
	remainingOutfitSpace -= o_shipManager.thrusterSpaceUse[o_gameManager.playerThrusterID]
	remainingOutfitSpace -= o_shipManager.thrusterSpaceUse[o_gameManager.playerManeuverID]
	for(i = 0; i < 6; i++) {
		if(o_gameManager.playerGunports[i] != -1 ) {
			remainingOutfitSpace -= o_shipManager.weaponSpaceUse[o_gameManager.playerGunports[i]]
		}
	}
	for(i = 0; i < 4; i++) {
		if(o_gameManager.playerTurretports[i] != -1 ) {
			remainingOutfitSpace -= o_shipManager.weaponSpaceUse[o_gameManager.playerTurretports[i]]
		}
	}
	remainingOutfits = "Remaning Outfit Space: " + string(remainingOutfitSpace)
	draw_text(x-450, y-pos, remainingOutfits)
}

if(button != "Selector") {
	draw_text_transformed(x - 100, y - 20, button, 2, 2, 0)
} else {
	draw_text_transformed(x - 225, y - 15, item, 1, 1.25, 0)
}