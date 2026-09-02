function move_dice(){
	if (--retreat_timer>0) {
	var tx = path[formation_index][0];
	var ty = path[formation_index][1];
		if (point_distance(x,y,tx, ty) > 20) {			
			x+=lengthdir_x(10, point_direction(x, y, tx, ty));
			y+=lengthdir_y(10, point_direction(x, y, tx, ty));
		}
	}
	else {
		direction=270;
		speed=10
		fire=false;
	}
}