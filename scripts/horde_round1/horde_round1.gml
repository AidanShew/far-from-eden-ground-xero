function horde_round1(){
	obj_horde.horde_wave++;
	
	if (obj_horde.horde_wave==1) {
		instance_create_layer(x,y,"Instances", obj_tracer_spawner);
	}
	else if (obj_horde.horde_wave==2) {
		instance_create_layer(x,y,"Instances", obj_tracer_spawner);
		instance_create_layer(x,y,"Instances", obj_soldier_spawner);
		obj_soldier_spawner.amount=6;
	}
	else if (obj_horde.horde_wave==3) {
		instance_create_layer(x,y,"Instances", obj_soldier_spawner);
		obj_soldier_spawner.amount=6;
		hunter_create(2);
	}
	else if (obj_horde.horde_wave==4) {
		exo_create();
	}
	else if (obj_horde.horde_wave==5) {
		whirlpool_create(1);
	}
	else if (obj_horde.horde_wave==6) {
		obj_horde.horde_round=2;
		obj_horde.horde_wave=0;
		horde_advance();
	}
}