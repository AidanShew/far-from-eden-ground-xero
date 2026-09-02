function create_cross(){
	//Set spawn_timer2 to 120
	if (spawn_timer2%20==0&&spawn_timer2>0) {
		soldier_create(1, MOVE.CROSS_RIGHT, noone, false);
		soldier_create(1, MOVE.CROSS_LEFT, noone, true);
	}
	spawn_timer2--;
	
	
	/*
	if (global.enemies_off_screen >= 10) {
		global.enemies_off_screen=0;
		show_debug_message("End of Section 6...\nGoing to Section 7");
		spawn_timer2=240;
		section=SECTION.SIX;
	}
	*/
}