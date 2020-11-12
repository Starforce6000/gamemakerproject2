if(o_gameManager.system = systemID) {
	image_index = 6
}

draw_self()

systemName = o_gameManager.systemName[systemID]
draw_text(x - (string_length(systemName) * 4.5), y + 15, systemName)