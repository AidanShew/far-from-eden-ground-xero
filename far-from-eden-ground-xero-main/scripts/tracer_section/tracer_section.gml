function tracer_section(){
	if (tracer_section_spawn_timer%500==0) spawned=false;

	if (--tracer_section_spawn_timer>0&&tracer_section_spawn_timer%5==0) {
		if (tracer_section_spawn_timer>1500) { //Center Double Helix
			tracer_create(
			1, 
			TRACER_MOVE.FROM_TOP, 
			tracer_section_spawn_timer%2==0 ? TRACER_ALIGN.RIGHT : TRACER_ALIGN.LEFT, 
			-15, 
			room_width/2, 
			tracer_section_spawn_timer%2==0 ? false : true);
		
			if (!spawned) {
				for (var i=0; i<2; i++) {
					soldier_create(
					1, 
					MOVE.TARGET, 
					ATTACK.AIMED, 
					i==1 ? true : false, 
					i==1 ? 700 : 1250,
					200,
					noone,
					noone,
					i==1 ? 700 : 1250,
					-50,
					500);
				}
			spawned=true;
			}
		}
	
		else if (1500>=tracer_section_spawn_timer&&tracer_section_spawn_timer>1000) {
			tracer_create(
			1, 
			tracer_section_spawn_timer%2==0 ? TRACER_MOVE.FROM_BOTTOM : TRACER_MOVE.FROM_TOP, 
			tracer_section_spawn_timer%2==0 ? TRACER_ALIGN.RIGHT : TRACER_ALIGN.LEFT, 
			tracer_section_spawn_timer%2==0 ? room_height+15 : -15, 
			tracer_section_spawn_timer%2==0 ? 1310 : 610, 
			true);
		
			if (!spawned) {
				for (var i=0; i<2; i++) {
					soldier_create(
					1, 
					MOVE.TARGET, 
					ATTACK.AIMED, 
					i==1 ? true : false, 
					i==1 ? (room_width/2)-150 : (room_width/2)+150,
					200,
					noone,
					noone,
					i==1 ? 1250 : 700,
					-50,
					500);
				}
			spawned=true;
			}
		}
		else if (1000>=tracer_section_spawn_timer&&tracer_section_spawn_timer>500) {
			tracer_create(
			1, 
			tracer_section_spawn_timer%2==0 ? TRACER_MOVE.FROM_RIGHT : TRACER_MOVE.FROM_LEFT, 
			TRACER_ALIGN.RIGHT, 
			room_height/2, 
			tracer_section_spawn_timer%2==0 ? room_width+15 : -15, 
			false);
		
			if (!spawned) {
				for (var i=0; i<2; i++) {
					soldier_create(
					1, 
					MOVE.TARGET, 
					ATTACK.AIMED, 
					i==1 ? true : false, 
					i==1 ? (room_width/2)-300 : (room_width/2)+300,
					i==1 ? 200 : 900,
					noone,
					noone,
					i==1 ? 1250 : 700,
					-50,
					500);
				}
			spawned=true;
			}
		}
		else if (500>=tracer_section_spawn_timer) {
			tracer_create(
			1, 
			tracer_section_spawn_timer%2==0 ? TRACER_MOVE.FROM_TOP : TRACER_MOVE.FROM_BOTTOM, 
			tracer_section_spawn_timer%2==0 ? TRACER_ALIGN.RIGHT : TRACER_ALIGN.LEFT, 
			-15, 
			room_width/2, 
			tracer_section_spawn_timer%2==0 ? false : true);
		
			if (!spawned) {
				for (var i=0; i<2; i++) {
					soldier_create(
					1, 
					MOVE.TARGET, 
					ATTACK.AIMED, 
					i==1 ? true : false, 
					i==1 ? 700 : 1250,
					room_height/2,
					noone,
					noone,
					i==1 ? 700 : 1250,
					-50,
					500);
				}
			spawned=true;
			}
		}
		else if (0>=tracer_section_spawn_timer) {
			spawned=false;
			section=SECTION.EIGHT;
		}
	}	

}