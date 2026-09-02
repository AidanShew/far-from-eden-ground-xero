function move_orbit() {
	if (--retreat_timer>0) {
		var dir = point_direction(x, y, path[0], path[1]);
		if (arrived) {
			orbit_angle += 10;
	
			x = path[0] + lengthdir_x(40, orbit_angle);
			y = path[1] + lengthdir_y(40, orbit_angle);
		}
		else {
			if (point_distance(x,y, path[0], path[1]) <= 10) {
				arrived=true;
			}
			else {
				direction=point_direction(x,y, path[0], path[1]);
				speed=30;
			}
		}
	}	
	else {
		speed=30;
		direction= 10 + 90;
	}
}