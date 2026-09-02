function create_helix(){
	/*
	---INSTRUCTIONS---
	*If helix_spawn_timer doesn't exist, create it and set it to an even
	number greater than 20, recommended to be 90.
	*/
	//Set helix_spawn_timer to 90
	if (helix_spawn_timer>=0) {
		if (helix_spawn_timer%20==0) {
			soldier_create(1, MOVE.HELIX_RIGHT);
		}
		if (helix_spawn_timer%20==10) {
			soldier_create(1, MOVE.HELIX_LEFT);
		}
		helix_spawn_timer--;
	}
}