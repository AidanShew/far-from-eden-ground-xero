function whirlpool_create(loop_amount){
	for (var i=0; i<loop_amount; i++) {
		var gameMargin=150;
		var enemy=instance_create_layer(0,0, "Instances", obj_wp);
		show_debug_message(string("Whirlpool Created!"));
		if (instance_exists(obj_horde)) { obj_horde.enemies_alive+=1; }
			switch (irandom(3)) {
				case 0: //Right Side
				enemy.x=room_width+gameMargin;
				enemy.y=irandom(room_height);
				break;
	
				case 1: //Left Side
				enemy.x=-gameMargin;
				enemy.y=irandom(room_height);
				break;
	
				case 2: //Bottom
				enemy.x=irandom(room_width);
				enemy.y=room_height+gameMargin;
				break;
	
				case 3: //Top
				enemy.x=irandom(room_width);
				enemy.y=-gameMargin;
				break;
			}
		}
}