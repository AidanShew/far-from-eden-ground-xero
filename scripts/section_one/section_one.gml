function section_one() {
	create_swoop()
	
	if (global.enemies_off_screen >= 10) {
		global.enemies_off_screen=0;
		spawned=false;
		spawn_timer=90;
		show_debug_message("End of Section 1...\nGoing to Section 2");
		section=SECTION.TWO;
	}
}