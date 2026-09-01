function soldier_swoop_create(){
	//Set spawn_timer to 90
	if (spawn_timer==80||spawn_timer==60||spawn_timer==40||spawn_timer==20||spawn_timer==0) {
		show_debug_message("Spawn");
		left=false;
		soldier_create(1, MOVE.SWOOP);
	}
	if (spawn_timer==90||spawn_timer==70||spawn_timer==50||spawn_timer==30||spawn_timer==10) {
		show_debug_message("Spawn");
		left=true;
		soldier_create(1, MOVE.SWOOP);
	}

	spawn_timer--;
	show_debug_message(string(spawn_timer));
}