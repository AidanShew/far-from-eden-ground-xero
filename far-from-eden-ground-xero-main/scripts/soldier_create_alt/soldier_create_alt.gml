function soldier_create_alt(amount, attack_typenoone, red=noone){

	for (var i=0; i<amount; i++) {
		var enemy=instance_create_layer(0,0,"Instances", obj_enemy_soldier);
		switch (move_type) {
			case (MOVE.RIVER):
			enemy.x-=(100*i);
			//enemy.red=i%2==0;
			enemy.path = [[500, 270], [1200,270], [1200, 470], [720,470], [720, 670], [2000, 670]];
			break;
			
			case (MOVE.DICE):
			enemy.direction=270;	
			enemy.formation_index=i;
			
			if (enemy.formation_index==0||enemy.formation_index==2||enemy.formation_index==5||enemy.formation_index==7) enemy.red=true;
			
			enemy.path = [
			[760, 240], [960, 240], [1160, 240], 
				[860, 340], [1060, 340], 
			[760, 440], [960, 440], [1160, 440]
			];
			enemy.image_angle=270;
			break;
			
			case (MOVE.CORNER):
			enemy.x=room_width/2;
			enemy.y=-50;
			enemy.formation_index=i;
			//enemy.red=i==1;
			enemy.speed=10;
			enemy.path= [[660, 140], [1260,140]];
			enemy.image_angle=270;
			enemy.attack_type=attack_type;
			enemy.move_type=move_type;
			break;
			
			case (MOVE.SWOOP):
			enemy.y=-50;
			if (left) enemy.x=(room_width/2)+150;
			else enemy.x=(room_width/2)-150;
			enemy.direction=270;
			enemy.speed=10;
			enemy.move_type=move_type;
			
			case (MOVE.TEST):
			enemy.image_angle=270;
			enemy.direction=270;
			enemy.attack_type=attack_type
			enemy.formation_index=i;
			enemy.path = [[room_width/2, room_height/2]];
			break;
			
			case (MOVE.TRIO):
			enemy.image_angle=270;
			enemy.direction=270;
			enemy.y=-50;
			enemy.speed=10;
			enemy.x=(room_width/2)-284;
			enemy.move_type=move_type;
			enemy.attack_type=attack_type;
			break;
		
			case (MOVE.FIGURE_EIGHT):
			enemy.y=-50;
			enemy.image_angle=270;
			if (left) enemy.x=(room_width/2)-300;
			else enemy.x=(room_width/2)+300;
			enemy.direction=270;
			enemy.speed=10;
			enemy.move_type=move_type;
			break;
			
			case (MOVE.CROSS):
			enemy.y=-50;
			if (left) enemy.x=(room_width/2)-300;
			else enemy.x=(room_width/2)+300;
			enemy.red=red;
			enemy.direction=270;
			enemy.speed=10;
			enemy.move_type=move_type;
			break;
			
			case (MOVE.CIRCUIT):
			enemy.y=100;
			var path_x1;
			var path_x2;
			var y_offset;
			if (!left) {
				enemy.x=1500;
				enemy.direction=180;
				path_x1=(room_width/2)+50;
				path_x2=path_x1+320;
				y_offset=-50;
				enemy.y=150;
			}
			else {
				enemy.x=400;
				enemy.direction=0;
				path_x1=(room_width/2)-50;
				path_x2=path_x1-320;
				y_offset=50;
				enemy.y=50;
			}
			enemy.path = [
				[path_x1, 100-y_offset], 
				[path_x1, 200-y_offset], 
				[path_x2, 200-y_offset], 
				[path_x2, 300-y_offset], 
				[path_x1, 300-y_offset], 
				[path_x1, 400-y_offset],
				[path_x2, 400-y_offset],
				[path_x2, 500-y_offset],
				[path_x1, 500-y_offset],
				[path_x1, 600-y_offset], 
				[path_x2, 600-y_offset], 
				[path_x2, 700-y_offset], 
				[path_x1, 700-y_offset], 
				[path_x1, 800-y_offset],
				[path_x2, 800-y_offset],
				[path_x2, 900-y_offset],
				[path_x1, 900-y_offset], 
				[path_x1, 1000-y_offset],
				[path_x2, 1000-y_offset],
				[path_x2, 1100-y_offset],
			];
			enemy.speed=10;
			enemy.move_type=move_type;
			break;
			
			case (MOVE.HELIX):
			enemy.y=100;
			if (!left) {
				enemy.x=(room_width/2)+300;
				enemy.direction=180;
			}
			else {
				enemy.x=(room_width/2)-300;
				enemy.direction=0;
			}
			enemy.left=left;
			enemy.speed=10;
			enemy.move_type=move_type;
		}
	}
	
}