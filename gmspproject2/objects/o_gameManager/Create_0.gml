//"Save Data"
playerShipID = 0
playerThrusterID = 0
playerManeuverID = 1
playerGunports = [-1, -1, -1, -1, -1, -1]
playerTurretports = [-1, -1, -1, -1]
playerCredits = 99999
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

//CONSTANTS
monthName = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
systemCount = 6
systemName = ["Sol", "Alpha Centauri", "Sirius", "Procyon", "Epsilon", "Ceti"]
systemX = [0, 40, -20, 80, -65, 100]
systemY = [0, 55, -80, -40, 75, 30]
systemInhabited = [true, true, true, true, true, true, false]
systemRoom = [r_Sol, r_AlphaCentauri, r_Sirius, r_Procyon, r_Epsilon, r_Ceti]

playButton = instance_create_layer(700, 500, "UI", o_button)
playButton.button = "Start Game"

menu = "main"