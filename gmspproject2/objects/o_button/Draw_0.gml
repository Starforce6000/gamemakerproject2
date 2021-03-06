if(button != "Selector") {
	image_xscale = 4.5
	image_yscale = 3
} else {
	sprite_index = s_outfitButton
	image_xscale = 9
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
		//draw_sprite_ext(o_shipManager.thrusterSprite[o_gameManager.purchaseID],o_shipManager.thrusterSprite[o_gameManager.purchaseID],x-350,y-125,2,2,0,c_white,1)
	} else if(o_gameManager.purchaseType == "Weapon") {
		cost = "Cost: " + string(o_shipManager.weaponCost[o_gameManager.purchaseID])
		draw_text(x-450, y-pos, cost)
		pos -= 30
		space = "Outfit Space: " + string(o_shipManager.weaponSpaceUse[o_gameManager.purchaseID])
		draw_text(x-450, y-pos, space)
		pos -= 30
		weaponType = "Weapon Type: " + string(o_shipManager.weaponType[o_gameManager.purchaseID])
		draw_text(x-450, y-pos, weaponType)
		pos -= 30
		shieldDmg = "Damage Per Shot (Shields): " + string(o_shipManager.damageShields[o_gameManager.purchaseID])
		draw_text(x-450, y-pos, shieldDmg)
		pos -= 30
		hullDmg = "Damage Per Shot (Hull): " + string(o_shipManager.damageHull[o_gameManager.purchaseID])
		draw_text(x-450, y-pos, hullDmg)
		pos -= 30
		perSecond = "Shots Per Second: " + string(room_speed / o_shipManager.rate[o_gameManager.purchaseID])
		draw_text(x-450, y-pos, perSecond)
		pos -= 30
		if(o_shipManager.weaponType[o_gameManager.purchaseID] == "turret") {
			draw_sprite_ext(o_shipManager.weaponSprite[o_gameManager.purchaseID],o_shipManager.weaponSprite[o_gameManager.purchaseID],x-25,y-125,2,2,0,c_white,1)
		}
	} else if(o_gameManager.purchaseType == "Ship") {
		cost = "Cost: " + string(o_shipManager.shipCost[o_gameManager.purchaseID])
		shipOutfit = "Ship Outfit Space: " + string(o_shipManager.outfitSpace[o_gameManager.purchaseID])
		draw_text(x-450, y-pos, cost)
		pos -= 30
		shipOutfit = "Ship Outfit Space: " + string(o_shipManager.outfitSpace[o_gameManager.purchaseID])
		draw_text(x-450, y-pos, shipOutfit)
		pos -= 30
		shipEngine = "Engine Space: " + string(o_shipManager.engineSpace[o_gameManager.purchaseID])
		draw_text(x-450, y-pos, shipEngine)
		pos -= 30
		guns = "Gun Ports: " + string(o_shipManager.gunPorts[o_gameManager.purchaseID])
		draw_text(x-450, y-pos, guns)
		pos -= 30
		turrets = "Turret Ports: " + string(o_shipManager.turretPorts[o_gameManager.purchaseID])
		draw_text(x-450, y-pos, turrets)
		pos -= 30
		baseHull = "Base Hull Strength: " + string(o_shipManager.baseHP[o_gameManager.purchaseID])
		draw_text(x-450, y-pos, baseHull)
		pos -= 30
		draw_sprite(o_shipManager.shipSprites[o_gameManager.purchaseID],o_shipManager.shipSprites[o_gameManager.purchaseID],x-25,y-175)
	} else if(o_gameManager.purchaseType == "Misc") {
		cost = "Cost: " + string(o_shipManager.outfitCost[o_gameManager.purchaseID])
		draw_text(x-450, y-pos, cost)
		pos -= 30
		space = "Outfit Space: " + string(o_shipManager.spaceUse[o_gameManager.purchaseID])
		draw_text(x-450, y-pos, space)
		pos -= 30
		if(o_shipManager.energyGeneration[o_gameManager.purchaseID] > 0) {
			energy = "Energy Generation: " + string(o_shipManager.energyGeneration[o_gameManager.purchaseID])
			draw_text(x-450, y-pos, energy)
			pos -= 30
		} else if(o_shipManager.energyGeneration[o_gameManager.purchaseID] < 0) {
			energy = "Energy Use: " + string(o_shipManager.energyGeneration[o_gameManager.purchaseID] * -1)
			draw_text(x-450, y-pos, energy)
			pos -= 30
		}
		if(o_shipManager.heatGeneration[o_gameManager.purchaseID] > 0) {
			heat = "Heat Generation: " + string(o_shipManager.heatGeneration[o_gameManager.purchaseID])
			draw_text(x-450, y-pos, heat)
			pos -= 30
		} else if(o_shipManager.heatGeneration[o_gameManager.purchaseID] < 0) {
			heat = "Cooling: " + string(o_shipManager.heatGeneration[o_gameManager.purchaseID] * -1)
			draw_text(x-450, y-pos, heat)
			pos -= 30
		}
		if(o_shipManager.cargoCapacity[o_gameManager.purchaseID] > 0) {
			cargo = "Cargo Capacity: " + string(o_shipManager.cargoCapacity[o_gameManager.purchaseID])
			draw_text(x-450, y-pos, cargo)
			pos -= 30
		}
	}
	pos = 270
	credits = "Your Credits: " + string(o_gameManager.playerCredits)
	draw_text(x-450, y-pos, credits)
	pos -= 30
	remainingOutfitSpace = o_shipManager.outfitSpace[o_gameManager.playerShipID]
	remainingOutfitSpace -= o_shipManager.thrusterSpaceUse[o_gameManager.playerThrusterID]
	remainingOutfitSpace -= o_shipManager.thrusterSpaceUse[o_gameManager.playerManeuverID]
	remainingEngineSpace = o_shipManager.engineSpace[o_gameManager.playerShipID]
	remainingEngineSpace -= o_shipManager.thrusterSpaceUse[o_gameManager.playerThrusterID]
	remainingEngineSpace -= o_shipManager.thrusterSpaceUse[o_gameManager.playerManeuverID]
	for(i = 0; i < o_gameManager.gunsEquipped; i++) {
		remainingOutfitSpace -= o_shipManager.weaponSpaceUse[o_gameManager.playerGunports[i]]
	}
	for(i = 0; i < o_gameManager.turretsEquipped; i++) {
		remainingOutfitSpace -= o_shipManager.weaponSpaceUse[o_gameManager.playerTurretports[i]]
	}
	for(i = 0; i < o_gameManager.modulesEquipped; i++) {
		remainingOutfitSpace -= o_shipManager.spaceUse[o_gameManager.playerModules[i]]
	}
	
	if(o_gameManager.menu == "Outfits") {
		remainingOutfits = "Remaning Outfit Space: " + string(remainingOutfitSpace)
		draw_text(x-450, y-pos, remainingOutfits)
		pos -= 30
		remainingEngines = "Remaining Engine Space: " + string(remainingEngineSpace)
		draw_text(x-450, y-pos, remainingEngines)
		pos -= 30
		powerGeneration = 0
		for(i = 0; i < o_gameManager.modulesEquipped; i++) {
			powerGeneration += o_shipManager.energyGeneration[o_gameManager.playerModules[i]]
		}
		draw_text(x-450, y-pos, "Ship Energy Generation: " + string(powerGeneration))
		pos -= 30
		heatGeneration = 0
		for(i = 0; i < o_gameManager.modulesEquipped; i++) {
			heatGeneration += o_shipManager.heatGeneration[o_gameManager.playerModules[i]]
		}
		powerStorage = 0
		for(i = 0; i < o_gameManager.modulesEquipped; i++) {
			powerStorage += o_shipManager.energyStorage[o_gameManager.playerModules[i]]
		}
		draw_text(x-450, y-pos, "Ship Heat Generation: " + string(heatGeneration))
		pos -= 30
		if(powerGeneration <= 0) { 
			draw_text(x-450, y-pos, "Ship lacks enough power - increase power generation")
			pos -= 20
		}
		if(heatGeneration > 0) {
			draw_text(x-450, y-pos, "Ship heat generation too high - decrease heat generation")
			pos -= 20
		}
		if(powerStorage <= 0) {
			draw_text(x-450, y-pos, "Ship lacks power storage - cannot fire weapons")
			pos -= 20
		}
	} else if(o_gameManager.menu == "Commodities") {
		remainingCargo = "Remaing Cargo Space: " + string(o_gameManager.cargoRemaining)	
		draw_text(x-450, y-pos, remainingCargo)
	}
}

if(button != "Selector") {
	draw_text_transformed(x - 100, y - 20, button, 2, 2, 0)
} else if(purchaseType != "") {
	if(purchaseType != "Commodity") {
		draw_text_transformed(x - 225, y - 15, item, 1, 1.25, 0)
		if(purchaseType == "Weapon" or purchaseType == "Misc") {
			if(moduleEquipped > 0) {
				draw_text_transformed(x + 150, y - 15, "Equipped: " + string(moduleEquipped), 1, 1.25, 0)
			}
		} else if(purchaseType == "Thruster") {
			if(moduleEquipped) {
				draw_text_transformed(x + 150, y - 15, "Equipped", 1, 1.25, 0)
			}
		}
	} else {
		commodityText = o_gameManager.cargoNames[buttonID] + " - " + string(o_gameManager.cargoMainPrice[buttonID]) + " Credits"    
		commodityText2 = "In Cargo: " + string(o_gameManager.inCargo[buttonID])
		draw_text_transformed(x - 225, y - 15, commodityText, 1, 1.25, 0)
		draw_text_transformed(x + 100, y - 15, commodityText2, 1, 1.25, 0)
	}
} else if(missionType != "") {
	if(missionType == "bounty") {
		missionString = "Destroy " + missionSize + " pirate at " + o_gameManager.systemName[location]
	} else {
		missionString = "Deliver " + string(cargoAmount) + " tons of cargo to " + o_gameManager.systemName[location]
	}
	missionString2 = string(pay) + " Credits"
	draw_text_transformed(x - 225, y - 15, missionString, 1, 1.25, 0)
	draw_text_transformed(x + 150, y - 15, missionString2, 1, 1.25, 0)
}

if(button == "OK") {
	pos = 0
	draw_sprite_ext(s_box, 0, x, y - 300, 15, 5, 0, c_white, 1)
	dockString = "You dock at " + o_gameManager.systemName[o_gameManager.system] + " station, and take some time to refuel/repair your ship."
	draw_text(x - 425, y - 440 + pos, dockString)
	pos += 30
	for(i = 0; i < completedMissions; i++) {
		missionString = "You deliver the " + string(amount[i]) + " units of cargo to the station staff, and recieve " + string(pay[i]) + " credits in return." 
		draw_text(x - 425, y - 440 + pos, missionString)
		pos += 30
	}
}

if(button == "Start Game") {
	draw_text_transformed(x-330,y-450,"VOIDBORNE",8,8,0)
	draw_text_transformed(x-110,y-295,"========Controls========",1,1,0)
	draw_text_transformed(x-110,y-270,"WASD to move",1,1,0)
	draw_text_transformed(x-110,y-245,"N to change target lock",1,1,0)
	draw_text_transformed(x-110,y-220,"M to open star map",1,1,0)
	draw_text_transformed(x-110,y-195,"P to enter Dev Mode",1,1,0)
	draw_text_transformed(x-110,y-145,"======Dev Controls======",1,1,0)
	draw_text_transformed(x-110,y-120,"C to give 100,000 credits",1,1,0)
	draw_text_transformed(x-110,y-95,"Z to spawn random NPC",1,1,0)
	draw_text_transformed(x-110,y-70,"H for invincibility",1,1,0)
}