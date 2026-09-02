function hunter_create(loop_amount){
	for (var i=0; i<loop_amount; i++) {
		
		var enemy=instance_create_layer(room_width*0.5,-50, "Instances", obj_enemy_hunter);
		
		switch (room) {
			case (rm_horde):
			obj_horde.enemies_alive++;
			break;
		}
	}
}