function horde_advance(){
	switch (room) {
		case (rm_horde):
		enemies_alive=0;
		
		switch (obj_horde.horde_round) {
			case (1): horde_round1();
			break;
			case (2): horde_round2();
			break;
			case (3): horde_round3();
			break;
			case (4): horde_round4();
			break;
			case (5): horde_round5();
			break;
		}
		break;
	}
}