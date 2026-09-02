function create_circuit(){
	//Set spawn_timer3 to 90
	if (spawn_timer3%20==0) {
		show_debug_message("Spawn");
		left=false;
		soldier_create(1, MOVE.CIRCUIT, noone, false);
	}
	if (spawn_timer3%30==0) {
		show_debug_message("Spawn");
		left=true;
		soldier_create(1, MOVE.CIRCUIT, noone, true);
	}
	spawn_timer3--;
	//if (spawn_timer3>=0) show_debug_message("Spawn Timer: "+string(spawn_timer3));
	//show_debug_message("Enemies Exist: "+string(instance_number(obj_enemy)));
	//show_debug_message("Enemies Off Screen: "+string(global.enemies_off_screen));
	if (global.enemies_off_screen >= 20) {
		global.enemies_off_screen=0;
		spawn_timer3=2000;
		spawned=false;
		show_debug_message("End of Section 7...\nGoing to Section 8");
		section=SECTION.SEVEN;
	}
}