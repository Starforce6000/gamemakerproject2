//SHIP INFO
ships = 3
shipNames = 
["Finch", "Vulture", "Falcon"]
shipSprites =
[s_testShip, s_testMediumShip, s_testLargeShip]
shipSize =
["small", "medium", "large"]
shipCost = 
[20000, 150000, 2500000]
outfitSpace =
[150, 300, 700]
turretPorts =
[2, 2, 6]
gunPorts = 
[2, 4, 4]
speedModifier =
[1, 0.3, 0.1]

//OUTFIT INFO
thrusterOutfits = 4
weaponOutfits = 4
miscOutfits = 6

//Thrusters
thrusterNames = 
["x150 Small Ion Thruster", "k150 Small Ion RCS",
"x250 Medium Ion Thruster", "k250 Medium Ion RCS"]
thrusterType =
["main", "maneuvering",
"main", "maneuvering"]
thrusterSpaceUse =
[30, 20,
65, 50]
thrusterSprites = 
[s_testThrust, s_testManeuver,
s_testThrust, s_testThrust]
thrusterStats =
[4, 90,
7, 140]
thrusterCost =
[5000, 4500,
15000, 14000]

//Weapons
//For beam weapons, rate should be 0 and all values are per second instead of per shot.
weaponNames =
["Energy Blaster", "Triple Blaster Turret",
"Laser Emitter", "Dual Laser Turret"]
weaponType = 
["gun", "turret",
"gun", "turret"]
weaponSpaceUse = 
[6, 22,
8, 20]
damageShields = 
[12, 12,
80, 160]
damageHull =
[6, 6,
100, 200]
weaponEnergyUse =
[10, 10,
150, 300]
rate = 
[5, 5/3,
0, 0]
weaponCost =
[1000, 3500,
2000, 5500]


//Misc Outfits
//If an outfit doesn't use a certain property, set that to 0 for its value.
miscNames = 
["Heatsink", "Electric Heatsink", "Liquid Nitrogen Cooler",
"Cargo Rack", "Cargo Bay", "Cargo Hangar"]
spaceUse =
[5, 6, 15,
10, 75, 300]
energyGeneration =
[0, -50, 0,
0, 0, 0]
heatGeneration = 
[-200, -350, -750,
0, 0, 0]
cargoCapacity =
[0, 0, 0,
10, 150, 600]
outfitCost =
[750, 1500, 3500,
500, 7500, 35000]