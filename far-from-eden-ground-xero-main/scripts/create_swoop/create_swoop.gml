function create_swoop(){
	/*
	---INSTRUCTIONS---
	*If swoop_spawn_timer doesn't exist, create it and set it to 90.
	*swoop_create() should be placed in the step function since it 
	will automatically iterating when it's finished.
	
	---ABOUT---
	*Both Swoop Left and Swoop Right Soldiers are assied with move_swoop(),
	this script will add/subtract their direction to make them veer left or 
	right.
	
	*Every 10 seconds a soldier is created and is assigned Swoop Left or Right.
	Swoop Right will have the soldier fly towards the right side of the screen
	and same respectively for Swoop Left.
	*/
		
	if (swoop_spawn_timer==80||swoop_spawn_timer==60||swoop_spawn_timer==40||swoop_spawn_timer==20||swoop_spawn_timer==0) {
		soldier_create(1, MOVE.SWOOP_LEFT);
	}
	
	if (swoop_spawn_timer==90||swoop_spawn_timer==70||swoop_spawn_timer==50||swoop_spawn_timer==30||swoop_spawn_timer==10) {
		soldier_create(1, MOVE.SWOOP_RIGHT);
	}

	swoop_spawn_timer--;
}