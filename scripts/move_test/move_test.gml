function move_test(){
	var tx = path[formation_index][0];
	var ty = path[formation_index][1];
	if (point_distance(x,y,tx, ty) > 20) {		
		var dir = point_direction(x, y, tx, ty);
		
		x+=lengthdir_x(move_speed, dir);
		y+=lengthdir_y(move_speed, dir);
	}
}