//"Save Data"
playerShipID = 0
playerThrusterID = 0
playerManeuverID = 1
playerGunports = [-1]
playerTurretports = [-1]
playerCredits = 99999999999
modulesEquipped = 0
gunsEquipped = 0
turretsEquipped = 0
playerModules = [-1]
day = 1
month = 1
year = 2400
system = 0

//Initialization
player = 0
dockStation = 0
menuButton = [0, 0, 0, 0, 0, 0]
subMenuButton = [0]
buttonCount = 0
menuDividers = [0, 0, 0]
purchaseType = ""
purchaseName = ""
purchaseID = -1
selected = -1
dispX = 0
dispY = 0
mapStars = [0]
inRange = true

//CONSTANTS
monthName = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
systemCount = 7 + 14 + 0
//SYSTEMS [IMPORTANT]
systemName = ["Sol", "Alpha Centauri", "Sirius", "Procyon", "Epsilon", "Ceti", "Denebola", //Core Systems
"Asgard", "Twinstar", "Betelguese", "Deneb", "Rutilicus", "Alpha", "Syndica", "Tazared", "Pollux", "Castor", "Arida", "Eradani", "Polaris", "Alinyat", //Belt Systems
"Terminus", "Apex", "Apollyon", "Eradica", "Omega", "Skythrone", "Skyfall", "Deep", "Farpoint", "Dominus"] //Rim Systems
systemX = [0, 40, -20, 80, -65, 100, 70, //Core Systems 
10, 60, 180, 150, -120, -140, -100, -80, -100, -180, 205, -20, 80, -180 //Belt Systems
]  //Rim Systems
systemY = [0, 55, -80, -40, 75, 30, 120, //Core Systems
190, -120, -60, 90, 100, 20, -40, 150, -140, -50, 25, -190, -180, 165 //Belt Systems
]  //Rim Systems
systemInhabited = [true, true, true, true, true, false, false, //Core Systems
true, false, false, true, true, false, true, false, false, true, false, false, true, true //Belt Systems
]   //Rim Systems
systemRoom = [r_Sol, r_AlphaCentauri, r_Sirius, r_Procyon, r_Epsilon, r_Ceti, r_Denebola, //Core Systems
r_Asgard, r_Twinstar, r_Betelguese, r_Deneb, r_Rutilicus, r_Alpha, r_Syndica, r_Tazared, r_Pollux, r_Castor, r_Arida, r_Eradani, r_Polaris, r_Alinyat //Belt Systems
] //Rim Systems

playButton = instance_create_layer(700, 500, "UI", o_button)
playButton.button = "Start Game"

menu = "main"