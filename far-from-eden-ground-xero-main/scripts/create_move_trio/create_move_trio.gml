function create_move_trio(){
	if (!spawned) {
		spawned=true;
		instance_create_layer(0,0, "Instances", obj_controller_trio);
		drone_create(3, MOVE.TRIO, "left");
		drone_create(3, MOVE.TRIO, "right");
	}
}