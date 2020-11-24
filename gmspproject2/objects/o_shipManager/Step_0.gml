if(o_gameManager.menu == "") {
	nextSpawnTimer--
	if(nextSpawnTimer <= 0) {
		with(o_gameManager) {
			event_perform(ev_other, ev_user12)
		}
		nextSpawnTimer = random_range(2,7) * room_speed
	}
}