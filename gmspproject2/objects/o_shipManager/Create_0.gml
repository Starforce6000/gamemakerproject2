//SHIP INFO
shipNames = 
["Test Ship"]
shipSprites =
[s_testShip]

//OUTFIT INFO
thrusterOutfits = 2
weaponOutfits = 4
miscOutfits = 6
totalOutfits = thrusterOutfits + weaponOutfits + miscOutfits

//Thrusters
thrusterNames = 
["x150 Small Ion Thruster", "k150 Small Ion RCS"]
thrusterSprites = 
[s_testThrust, s_testManeuver]
thrusterStats =
[4, 90]
thrusterSpaceUse =
[30,20]

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


//Misc Outfits
//If an outfit doesn't use a certain property, set that to 0 for its value.
miscNames = 
["Heatsink", "Electric Heatsink", "Liquid Nitrogen Cooler",
"Cargo Rack", "Cargo Bay", "Cargo Hangar"]
spaceUse =
[5, 6, 15,
10, 75, 300]
energyUse =
[0, 50, 0,
0, 0, 0]
cooling = 
[200, 350, 750,
0, 0, 0]
cargoCapacity =
[0, 0, 0,
10, 150, 600]