function create_figure_eight(){
	//Set spawn_timer to 90
	if (spawn_timer==80||spawn_timer==60||spawn_timer==40||spawn_timer==20||spawn_timer==0) {
		show_debug_message("Spawn");
		left=false;
		soldier_create(1, MOVE.FIGURE_EIGHT);
	}
	if (spawn_timer==90||spawn_timer==70||spawn_timer==50||spawn_timer==30||spawn_timer==10) {
		show_debug_message("Spawn");
		left=true;
		soldier_create(1, MOVE.FIGURE_EIGHT);
	}
	spawn_timer--;
	if (spawn_timer>=0) show_debug_message("Spawn Timer: "+string(spawn_timer));
}