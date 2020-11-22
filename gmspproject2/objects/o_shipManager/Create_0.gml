//SHIP INFO
ships = 14
shipNames = 
["Finch", "Vulture", "Falcon", "Anaconda", "Argosy", "Cobra", "Courier", "Cruiser", "Galleon", "Gunboat", "Orbis", "Rapid", "Thunderbolt", "Viper"]
shipSprites =
[s_Finch, s_Vulture, s_Falcon, s_Anaconda, s_Argosy, s_Cobra, s_Courier, s_Cruiser, s_Galleon, s_Gunboat, s_Orbis, s_Rapid, s_Thunderbolt, s_Viper]
shipSize =
["small", "medium", "large", "medium", "medium", "small", "small", "large", "medium", "small", "medium", "small", "small", "small"]
shipCost = 
[20000, 150000, 2500000, 135000, 140000, 25000, 20000, 8000000, 150000, 35000, 120000, 40000, 30000, 25000]
outfitSpace =
[120, 300, 700, 350, 350, 180, 200, 900, 400, 200, 320, 150, 120, 150]
engineSpace =
[70, 200, 300, 100, 150, 60, 60, 400, 150, 100, 70, 80, 120, 70]
turretPorts =
[1, 2, 6, 4, 2, 1, 1, 6, 4, 2, 4, 0, 0, 1]
gunPorts = 
[2, 4, 4, 2, 0, 2 , 0, 6, 0, 4, 0, 4, 4, 2]
speedModifier =
[1, 0.3, 0.1, 0.25, 0.25, 0.9, 0.9, 0.15, 0.3, 1, 0.25, 1, 1, 1]
baseHP =
[1000, 6000, 14000, 7000, 5000, 1500, 1000, 16000, 7000, 1500, 6000, 1000, 800, 1500]

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
[4, 60,
7, 90]
thrusterCost =
[5000, 4500,
15000, 14000]

//Weapons
weaponNames =
["Energy Blaster", "Triple Blaster Turret",
"Laser Emitter", "Dual Laser Turret"]
weaponType = 
["gun", "turret",
"gun", "turret"]
weaponSprite = 
[0, s_tripleBlaster,
0, s_laserEmitter]
weaponSpaceUse = 
[6, 22,
8, 18]
damageShields = 
[12, 12,
8, 8]
damageHull =
[6, 6,
13, 13]
weaponEnergyUse =
[10, 10,
12, 12]
rate = 
[10, 10/3,
14, 14/2]
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
10, 75, 400]
energyGeneration =
[0, -50, 0,
0, 0, 0]
heatGeneration = 
[-200, -350, -750,
0, 0, 0]
cargoCapacity =
[0, 0, 0,
10, 100, 600]
outfitCost =
[750, 1500, 3500,
500, 7500, 35000]

//TURRET LOCATIONS
turretLocationsX = [-5]
turretLocationsY = [-8]