function exo_movement(position){
	
	if (instance_exists(obj_player)) { image_angle=point_direction(x, y, obj_player.x, obj_player.y); }
	
	if (position==1) { 
		if (x>(room_width*0.3) && y>(room_height*.15)-10) { speed=0; }
		else { move_towards_point(room_width*0.3, room_height*0.15, exo_speed); }
	}
	
	else if (position==2) {
		if (x>(room_width*0.3) && y>(room_height*0.5)-10) { speed=0; }
		else { move_towards_point(room_width*0.3, room_height*0.5, exo_speed); }
	}
	
	else if (position==3) { 
		if (x>(room_width*0.3) && y>(room_height*.85)-10) { speed=0; }
		else { move_towards_point(room_width*0.3, room_height*.85, exo_speed); }
	}
	
	else if (position==4) {
		if (x<(room_width*0.7) && y<(room_height*.15)+10) { speed=0; }
		else { move_towards_point(room_width*0.7, room_height*0.15, exo_speed); }
	}
	
	else if (position==5) {
		if (x<(room_width*0.7) && y<(room_height*0.5)+10) { speed=0; }
		else { move_towards_point(room_width*0.7, room_height*0.5, exo_speed); }
	}
	
	else if (position==6) {
		if (x<(room_width*0.7) && y<(room_height*.85)+10) { speed=0; }
		else { move_towards_point(room_width*0.7, room_height*.85, exo_speed); }
		
	}
	
	if (retreat_timer<=0) {
		if (position<=3) { 
			move_towards_point(-30, room_height*0.5, exo_speed);
			if (x<=-15) {
				check_for_advance();
				instance_destroy();
				}
		}
		else if (position>=4) {
			move_towards_point(room_width+30, room_height*0.5, exo_speed);
			if (x>=room_width+15) {
				check_for_advance();
				instance_destroy();
				}
		}
	}
}