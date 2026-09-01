/*
if (amount > 0 && spawn_timer <= 0) {
	enemy=instance_create_layer(x,y,"Instances", obj_enemy_soldier);

	switch (room) {
		case (rm_horde):
		obj_horde.enemies_alive++;
		break;
		
		case (rm_mission_one):
		obj_mission_one.enemies_alive++;		
		if (obj_mission_one.phase <= 3) {
			enemy.left=amount%2!=0;
		}
		else {
			enemy.left=amount>3;
			if (amount > 3) {
				enemy.position=obj_mission_one.enemies_alive;
			}
			else enemy.position=amount;
		}
		break;
	}
	show_debug_message("Current Amount: "+string(amount)+"\nRecently Created Position: "+string(enemy.position));
	amount--;
	spawn_timer=default_spawn_timer;
}

if (room==rm_horde) {
	//Destroys itself if no more amounts are assigned.
	if (amount <= 0) {
		if (wait_timer <= 0) instance_destroy();
		else wait_timer--;
	}
}

spawn_timer--;