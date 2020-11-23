if(owner == o_gameManager.player) {
	if(other.shieldHP > 0) {	
		other.shieldHP -= shield
		other.charging = false
		other.chargeDelay = 10
	} else {
		other.hullHP -= hull
	}
	instance_destroy()
}