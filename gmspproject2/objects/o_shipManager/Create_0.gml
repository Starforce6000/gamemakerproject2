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
miscOutfits = 12

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
lifetime = 
[1.5, 1.5,
1.5, 1.5]
projectileSpeed =
[12, 12,
19, 19]
projectileSprites =
[s_projectileBlaster, s_projectileBlaster,
s_projectileLaser, s_projectileLaser]
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
"Cargo Rack", "Cargo Bay", "Cargo Hangar",
"Small Reactor", "Medium Reactor", "Large Reactor",
"Small Battery", "Medium Battery", "Large Battery"]
spaceUse =
[5, 6, 15,
10, 75, 400,
10, 50, 80,
5, 25, 40]
energyGeneration =
[0, -50, 0,
0, 0, 0,
200, 1200, 3000,
0, 0, 0]
energyStorage =
[0, 0, 0,
0, 0, 0,
0, 0, 0,
100, 500, 1500]
heatGeneration = 
[-200, -350, -750,
0, 0, 0,
200, 600, 2000,
0, 0, 0]
shieldGeneration =
[0, 0, 0,
0, 0, 0,
0, 0, 0,
0, 0, 0]
cargoCapacity =
[0, 0, 0,
10, 100, 600,
0, 0, 0,
0, 0, 0]
outfitCost =
[750, 1500, 3500,
500, 7500, 35000,
1000, 10000, 50000,
500, 5000, 25000]

//TURRET LOCATIONS
turretLocationsX = 
[-5,
-25,-25,
-45,-45,20,20,-10,-10,
-20,-20, 30, 30,
-30, 15,
-10,
-10,
-30,-30,35,35,10,10]
turretLocationsY = 
[-8,
-20,20,
-40,40,-15,15,-25,25,
-25, 25, -20, 20,
0,0,
0,
0,
-15,15,-25,25,-35,35]