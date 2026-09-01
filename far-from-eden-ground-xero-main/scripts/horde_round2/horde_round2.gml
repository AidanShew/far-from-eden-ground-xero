function horde_round2(){
	obj_horde.horde_wave++;
	obj_horde.horde_round=2;
	show_debug_message("Advancing Wave: " + string(obj_horde.horde_wave)+"\nAdvancing Round: "+string(obj_horde.horde_round));
	enemies_alive=0;
	
	if (obj_horde.horde_wave==1) {
		instance_create_layer(x,y,"Instances", obj_tracer_spawner);
		exo_create();
	}
	else if (obj_horde.horde_wave==2) {
		hunter_create(6);
	}
	else if (obj_horde.horde_wave==3) {
		instance_create_layer(x,y,"Instances", obj_tracer_spawner);
		hunter_create(2);
	}
	else if (obj_horde.horde_wave==4) {
		exo_create();
		hunter_create(2);
	}
	else if (obj_horde.horde_wave==5) {
		whirlpool_create(1);
		hunter_create(3);
	}
	else if (obj_horde.horde_wave==6) {
		obj_horde.horde_wave=0;
		obj_horde.horde_round=3;
		horde_advance();
	}
}