function create_pack(){
	if (pack_spawn_timer>4) {
		if (pack_spawn_timer==40) {
			soldier_create(3, MOVE.PACK_LEFT, ATTACK.AIMED);
			show_debug_message("Created 3 soldiers on the Left Side");
		}
		else if (pack_spawn_timer==235) {
			soldier_create(3, MOVE.PACK_RIGHT, ATTACK.AIMED);
			show_debug_message("Created 3 soldiers on the Right Side");
		}
		pack_spawn_timer--;
	}
}