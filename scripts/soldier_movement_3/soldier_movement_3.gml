function soldier_movement_3(){
	red=!left;
	speed=30;
	
	if (left) {
		if (position==1) {
			if (point_distance(x,y, target_x1, target_y1) <= 20) {
				speed=0;
					
				if (instance_exists(obj_player)) spr_ia=point_direction(x, y, obj_player.x, obj_player.y);
				else spr_ia=270;
			}
			else move_towards_point(target_x1, target_y1, speed);
		}
			
		else if (position==2) {
			if (point_distance(x,y, target_x2, target_y2) <= 20) {
				speed=0;
				if (instance_exists(obj_player)) spr_ia=point_direction(x, y, obj_player.x, obj_player.y);
				else spr_ia=270;
			}
			else move_towards_point(target_x2, target_y2, speed);
		}
		else if (position==3) {
			if (point_distance(x,y, target_x3, target_y3) <= 20) {
				speed=0;
				if (instance_exists(obj_player)) spr_ia=point_direction(x, y, obj_player.x, obj_player.y);
				else spr_ia=270;
			}
			else move_towards_point(target_x3, target_y3, speed);
		}
			
		else if (position==4) {
			if (point_distance(x,y, target_x4, target_y4) <= 20) {
					
				if (moving_right) {
					x+=3;
					if (x > target_x4) moving_right=false;
				}
				else {
					x-=3;
					if (x < 100) moving_right=true;
				}
					
				if (instance_exists(obj_player)) spr_ia=point_direction(x, y, obj_player.x, obj_player.y);
				else spr_ia=270;
			}
			else move_towards_point(target_x4, target_y4, speed);
		}
	}
		
	else {
		if (position==1) {
			if (point_distance(x,y, target_x1, target_y1) <= 20) {
				speed=0;
				if (instance_exists(obj_player)) spr_ia=point_direction(x, y, obj_player.x, obj_player.y);
				else spr_ia=270;
			}
			else move_towards_point(target_x1, target_y1, speed);
		}
			
		else if (position==2) {
			if (point_distance(x,y, target_x2, target_y2) <= 20) {
				speed=0;
				if (instance_exists(obj_player)) spr_ia=point_direction(x, y, obj_player.x, obj_player.y);
				else spr_ia=270;
			}
			else move_towards_point(target_x2, target_y2, speed);
		}
		else if (position==3) {
			if (point_distance(x,y, target_x3, target_y3) <= 20) {
				speed=0;
				if (instance_exists(obj_player)) spr_ia=point_direction(x, y, obj_player.x, obj_player.y);
				else spr_ia=270;
			}
			else move_towards_point(target_x3, target_y3, speed);
		}
			
		else if (position==4) {
			if (point_distance(x,y, target_x4, target_y4) <= 20) {
				if (moving_right) {
					x+=3;
					if (x > target_x4) moving_right=false;
				}
				else {
					x-=3;
					if (x < 100) moving_right=true;
				}
					
				if (instance_exists(obj_player)) spr_ia=point_direction(x, y, obj_player.x, obj_player.y);
				else spr_ia=270;
			}
			else move_towards_point(target_x4, target_y4, speed);
		}
	}
}