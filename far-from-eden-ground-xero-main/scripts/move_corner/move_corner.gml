function move_corner(){
	if (retreat_timer>0) {
		if (point_distance(x,y, path[formation_index][0], path[formation_index][1]) > 20) {		
			direction = point_direction(x, y, path[formation_index][0], path[formation_index][1]);
			fire=false;
		}
		else {
			fire=true;
			speed=0;
			retreat_timer--;
		}
	}
	else {
		fire=false;
		speed = min(speed + 0.5, 10);
		direction=90;
	}
}