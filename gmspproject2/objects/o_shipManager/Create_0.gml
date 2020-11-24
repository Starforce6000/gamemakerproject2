randomize()
//SHIP INFO
ships = 14
shipNames = 
["Finch", "Vulture", "Falcon", "Anaconda", "Argosy", "Cobra", "Courier", "Cruiser", "Galleon", "Gunboat", "Orbis", "Rapid", "Thunderbolt", "Viper"]
shipSprites =
[s_Finch, s_Vulture, s_Falcon, s_Anaconda, s_Argosy, s_Cobra, s_Courier, s_Cruiser, s_Galleon, s_Gunboat, s_Orbis, s_Rapid, s_Thunderbolt, s_Viper]
shipSize =
["small", "medium", "large", "medium", "medium", "small", "small", "large", "medium", "small", "medium", "small", "small", "small"]
shipCost = 
	[irandom_range(19000,21000), 
	irandom_range(140000,160000), 
	irandom_range(2400000,2600000), 
	irandom_range(130000,140000), 
	irandom_range(130000,150000), 
	irandom_range(20000,30000), 
	irandom_range(19000,21000), 
	irandom_range(7000000,9000000), 
	irandom_range(140000,160000), 
	irandom_range(30000,40000), 
	irandom_range(100000,140000), 
	irandom_range(35000,45000), 
	irandom_range(25000,35000), 
	irandom_range(20000,30000)]
outfitSpace =
[120, 300, 700, 350, 350, 180, 200, 900, 400, 200, 320, 150, 120, 150]
engineSpace =
[70, 200, 300, 100, 150, 60, 60, 400, 150, 100, 70, 80, 120, 70]
turretPorts =
[1, 2, 6, 4, 2, 1, 1, 6, 4, 2, 4, 0, 0, 1]
gunPorts = 
[2, 4, 4, 2, 0, 2 , 0, 6, 0, 4, 0, 4, 2, 2]
speedModifier =
[1, 0.4, 0.1, 0.35, 0.35, 0.9, 0.9, 0.15, 0.35, 1, 0.4, 1, 1, 1]
baseHP =
[1000, 6000, 14000, 7000, 5000, 1500, 1000, 16000, 7000, 1500, 6000, 1000, 800, 1500]

//OUTFIT INFO
thrusterOutfits = 6
weaponOutfits = 4
miscOutfits = 15

//Thrusters
thrusterNames = 
["x150 Small Ion Thruster", "k150 Small Ion RCS",
"x250 Medium Ion Thruster", "k250 Medium Ion RCS",
"x600 Large Ion Thruster", "k600 Large Ion RCS"]
thrusterType =
["main", "maneuvering",
"main", "maneuvering",
"main", "maneuvering"]
thrusterSprite = 
[s_smallThruster, s_smallRCS,
s_mediumThruster, s_mediumRCS,
s_largeThruster, s_largeRCS]
thrusterSpaceUse =
[30, 20,
65, 50,
120, 100] 
thrusterStats =
[4, 60,
7, 90,
11,140]
thrusterCost =
	[irandom_range(4000,6000), 
	irandom_range(4000,5000),
	irandom_range(10000,20000), 
	irandom_range(10000,18000),
	irandom_range(75000,12500), 
	irandom_range(80000,90000)]

//Weapons
weaponNames =
["Energy Blaster", "Triple Blaster Turret",
"Laser Emitter", "Dual Laser Turret"]
weaponType = 
["gun", "turret",
"gun", "turret"]
weaponSprite = 
[s_singleBlaster, s_tripleBlaster,
s_laserEmitter, s_doubleBlaster]
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
35, 19]
projectileSprites =
[s_projectileBlaster, s_projectileBlaster,
s_projectileLaser, s_projectileLaser]
weaponEnergyUse =
[10, 10,
12, 12]
rate = 
[10, 10/3,
1, 14/2]
weaponCost =
	[irandom_range(500,1500), 
	irandom_range(3000,4000),
	irandom_range(1500,2500), 
	irandom_range(5000,6000)]

//Misc Outfits
//If an outfit doesn't use a certain property, set that to 0 for its value.
miscNames = 
["Heatsink", "Electric Heatsink", "Liquid Nitrogen Cooler",
"Cargo Rack", "Cargo Bay", "Cargo Hangar",
"Small Reactor", "Medium Reactor", "Large Reactor",
"Small Battery", "Medium Battery", "Large Battery",
"SH-20 Shielding", "SH-40 Shielding", "SH-120 Shielding"]
spaceUse =
[5, 6, 15,
10, 75, 400,
10, 50, 80,
5, 25, 40,
20,40,120]
energyGeneration =
[0, -50, 0,
0, 0, 0,
200, 1200, 3000,
0, 0, 0,
-200,-380,-1000]
energyStorage =
[0, 0, 0,
0, 0, 0,
0, 0, 0,
100, 500, 1500,
0,0,0]
heatGeneration = 
[-200, -350, -750,
0, 0, 0,
200, 600, 2000,
0, 0, 0,
0,0,0]
shieldGeneration =
[0, 0, 0,
0, 0, 0,
0, 0, 0,
0, 0, 0,
250,500,1500]
cargoCapacity =
[0, 0, 0,
10, 100, 600,
0, 0, 0,
0, 0, 0,
0,0,0]
outfitCost =	
	[irandom_range(500,1000), 
	irandom_range(1250,1750), 
	irandom_range(3250,3750),
	irandom_range(250,750), 
	irandom_range(7000,8000),	
	irandom_range(30000,40000),
	irandom_range(800,1200), 
	irandom_range(9000,11000), 
	irandom_range(40000,60000),
	irandom_range(250,750), 
	irandom_range(4000,6000), 
	irandom_range(20000,30000),
	irandom_range(2000,3000), 
	irandom_range(10000,15000), 
	irandom_range(40000,60000)]

//GUN LOCATIONS
gunLocationsX =
[20,20,
35,35,40,40,
-20,-20,70,70,
40,40,
30,30,
50,50,60,60,70,70,
0,0,20,20,
-10,-10, 25, 25,
20,20,
25,25]
gunLocationsY =
[-5,5,
-10,10,-7,7,
-50,50,-10,10,
-15,15,
-12,12,
-20,20,-12,12,-5,5,
-20,20,-10,10,
-30,30,-5,5,
-5,5,
-10,10]

//TURRET LOCATIONS
turretLocationsX = 
[-5,
-25,-25,
-45,-45,20,20,-10,-10,
-20,-20, 30, 30,
-30, 15,
-10,
-10,
-30,-30,35,35,10,10,
-20, -20, 20, 20,
-5,-5,
-5,-5,10,10,
-5]
turretLocationsY = 
[-8,
-20,20,
-40,40,-15,15,-25,25,
-25, 25, -20, 20,
0,0,
0,
0,
-15,15,-25,25,-35,35,
-15,15,-15,15,
-10,10,
-30,30,-15,15,
0]