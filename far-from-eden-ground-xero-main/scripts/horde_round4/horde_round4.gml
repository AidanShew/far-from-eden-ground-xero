function horde_round4(){
	obj_horde.horde_wave++;
	obj_horde.horde_round=4;
	show_debug_message("Advancing Wave: " + string(obj_horde.horde_wave)+"\nAdvancing Round: "+string(obj_horde.horde_round));
	enemies_alive=0;
	
	if (obj_horde.horde_wave==1) {
		instance_create_layer(x,y,"Instances", obj_tracer_spawner);
		exo_create();
		hunter_create(10);
	}
	else if (obj_horde.horde_wave==2) {
		instance_create_layer(x,y,"Instances", obj_soldier_spawner);
		obj_soldier_spawner.amount=8;
		instance_create_layer(x,y,"Instances", obj_tracer_spawner);
		hunter_create(10);
	}
	else if (obj_horde.horde_wave==3) {
		hunter_create(6);
		exo_create();
		instance_create_layer(x,y,"Instances", obj_soldier_spawner);
		obj_soldier_spawner.amount=4;
	}
	else if (obj_horde.horde_wave==4) {
		exo_create();
		instance_create_layer(x,y,"Instances", obj_soldier_spawner);
		obj_soldier_spawner.amount=10;
		hunter_create(2);
	}
	else if (obj_horde.horde_wave==5) {
		whirlpool_create(1);
		hunter_create(7);
		instance_create_layer(x,y,"Instances", obj_soldier_spawner);
		obj_soldier_spawner.amount=6;
	}
	else if (obj_horde.horde_wave==6) {
		obj_horde.horde_wave=0;
		obj_horde.horde_round=5;
		horde_advance();
	}
}