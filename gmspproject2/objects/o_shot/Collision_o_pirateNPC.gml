if(owner == o_gameManager.player or aiType == "Patroller") {
	if(other.shieldHP > 0) {	
		other.shieldHP -= shield
		other.chargeDelay = 1
	} else {
		other.hullHP -= hull
	}
	instance_destroy()
}