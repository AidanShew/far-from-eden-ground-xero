function section_two(){
	create_trio();
	
	if (spawned&&global.enemies_off_screen >= 7) {
		spawned=false;
		global.enemies_off_screen=0;
		show_debug_message("End of Section 2...\nGoing to Section 3");
		section=SECTION.THREE;
	}
		
}