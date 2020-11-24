draw_self()

pos = 0
for(i = 0; i < 3; i++) {
	if(payAmts[i] != 0) {
		payString = "You recieved " + string(payAmts[i]) + " credits for destruction of the wanted " + o_shipManager.shipNames[payoutShips[i]]
		draw_text(x - 325, y - 30 + pos, payString)
		pos += 20
	}
}