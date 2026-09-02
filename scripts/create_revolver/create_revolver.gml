function create_revolver(){
	if (!instance_exists(obj_revolver_right_p)) instance_create_layer(0,0, "Instances", obj_revolver_right_p);
	if (!instance_exists(obj_revolver_left_p)) instance_create_layer(0,0, "Instances", obj_revolver_left_p);
}