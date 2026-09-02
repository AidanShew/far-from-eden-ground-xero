function create_pack(){
	if (pack_iteration<4) {
		if (pack_spawn_timer>0&&pack_spawn_timer%120==0) {
			soldier_create(
			3, 
			pack_iteration%2==0 ? MOVE.PACK_LEFT : MOVE.PACK_RIGHT, 
			ATTACK.AIMED, 
			pack_iteration%2==0 ? false : true);
		}
		pack_spawn_timer--;
		if (pack_spawn_timer<=0) {
			pack_iteration++;
			pack_spawn_timer=120;
		}
	}
}