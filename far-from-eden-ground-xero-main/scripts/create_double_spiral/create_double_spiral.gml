function create_double_spiral(){
	if (!spawned){
		soldier_create(2, MOVE.CORNER, ATTACK.SPIRAL);
		drone_create(17, MOVE.DICE);
		spawned=true;
	}
	show_debug_message("Enemies Off Screen: "+string(global.enemies_off_screen)+"\nEnemies Exist: "+string(instance_number(obj_enemy)));
	
	if (spawned&&global.enemies_off_screen >= 16) {
		global.enemies_off_screen=0;
		spawned=false;
		
		show_debug_message("End of Section 4...\nGoing to Section 5");
		section=SECTION.FIVE;
	}
}