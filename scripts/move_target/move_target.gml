function move_target(target_x, target_y, esc_x=noone, esc_y=noone, move_timer) {
	image_angle=direction;
	if (move_timer>0) {
		//show_debug_message("Move Timer: "+string(move_timer));
		if (point_distance(x,y,path[index][0], path[index][1]) < 20) {
			speed=0;
			direction=270;
		}
		else {
			speed=10;
			direction=point_direction(x,y, path[index][0], path[index][1]);
		}
	}
	else {
		direction += x>room_width/2 ? 1 : -1;
		speed=15;
	}
	
	
}