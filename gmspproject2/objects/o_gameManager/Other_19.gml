/// @description MISSION ACCEPT

switch missionType {
	case "cargo":
		if(cargoRemaining >= missionAmount) {
			missionTypes[missions] = "cargo"
			missionLocations[missions] = missionDest
			missionTargets[missions] = "n/a"
			missionQuantity[missions] = missionAmount
			missionRewards[missions] = missionPay
			missionCargo += missionAmount
			cargoRemaining -= missionAmount
			instance_destroy(subMenuButton[selected])
			missions++
		}
		break
	case "bounty":
		missionTypes[missions] = "bounty"
		missionLocations[missions] = missionDest
		do {
			missionTargets[missions] = irandom_range(0, o_shipManager.ships - 1)
		} until(o_shipManager.shipSize[missionTargets[missions]] == missionSize)
		missionQuantity[missions] = 0
		missionRewards[missions] = missionPay
		instance_destroy(subMenuButton[selected])
		missions++
		break
}