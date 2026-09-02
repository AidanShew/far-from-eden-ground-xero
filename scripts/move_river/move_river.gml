function move_river(){	
	if (index < array_length(path)) {
		var tx = path[index][0];
		var ty = path[index][1];
		
		var dir = point_direction(x, y, tx, ty);
		
		x+=lengthdir_x(move_speed, dir);
		y+=lengthdir_y(move_speed, dir);
		
		if (point_distance(x,y,tx, ty) < 20) index++;
	}
}