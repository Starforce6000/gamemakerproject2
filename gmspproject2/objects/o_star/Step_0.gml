if(o_gameManager.menu != "" && o_gameManager.menu != "map") {
	instance_destroy()	
}
if(o_gameManager.day != prevDay) {
	instance_destroy()	
}
prevDay = o_gameManager.day
