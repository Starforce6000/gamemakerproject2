if(aiType == "Pirater" or aiType == "Bounty") {
	if(other.alive) {
		if(other.shieldHP > 0) {	
			other.shieldHP -= shield
			other.chargeDelay = 1
		} else {
			other.hullHP -= hull
		}
		instance_destroy()
	}
}