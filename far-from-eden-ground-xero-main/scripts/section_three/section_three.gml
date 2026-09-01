function section_three(){
	create_helix();
	show_debug_message("Enemies Off Screen: "+string(global.enemies_off_screen));
	
	if (global.enemies_off_screen >= 10) {
		
		global.enemies_off_screen=0;
		spawn_timer=90;
		show_debug_message("End of Section 3...\nGoing to Section 4");
		spawned=false;
		show_debug_message("Spawned: "+string(spawned));
		section=SECTION.FOUR;
	}
}