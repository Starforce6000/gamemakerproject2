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

//Initialization
player = 0
menuButton = [0, 0, 0, 0, 0, 0]
subMenuButton = [0]
buttonCount = 0
menuDividers = [0, 0, 0]
purchaseType = ""
purchaseName = ""
purchaseID = -1
selected = -1

playButton = instance_create_layer(700, 500, "UI", o_button)
playButton.button = "Start Game"

menu = "main"