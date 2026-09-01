function treclops_create(){
	if (!spawned) {
		var enemy=instance_create_layer(0,0,"Instances", obj_enemy_treclops);
		enemy.x=room_width/2;
		enemy.y=-50;
		enemy.path = [room_width/2, 200];
		spawned=true;
	}
	else show_debug_message("Spawned: "+string(spawned));
}