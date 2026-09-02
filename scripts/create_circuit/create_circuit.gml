function create_circuit() {
	var timer=circuit_spawn_timer;
	
	//Set circuit_spawn_timer to 600
	if ((timer%15==0)&&(timer>0||timer<-400)) {
		for (var i=0; i<=1; i++) {
			soldier_create(
			1, 
			i==0 ? MOVE.CIRCUIT_RIGHT : MOVE.CIRCUIT_LEFT, 
			noone, 
			((i==0&&timer>0) || (i==1&&timer<0)) ? false : true);
		}
	}
	circuit_speed=clamp(
	circuit_speed+0.03, 
	10, 
	(timer<0) ? 20 : 15);
	
	circuit_spawn_timer--;
	
	/*
	if (global.enemies_off_screen >= 20) {
		global.enemies_off_screen=0;
		circuit_spawn_timer=2000;
		spawned=false;
		show_debug_message("End of Section 7...\nGoing to Section 8");
		section=SECTION.SEVEN;
	}
	*/
}