function spawn_cutscene(){
	move_towards_point(x, 928, 5);
	if (point_distance(x,y,x, 928)<10) {
		instance_create_layer(x, y, "Instances", obj_player);
		instance_destroy();
	}
}