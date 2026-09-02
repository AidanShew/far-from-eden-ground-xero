function tre_calibrate(){
	if (point_distance(x,y, path[0], path[1])>=10) {
		direction=point_direction(x, y, path[0], path[1]);
		speed=10;
	}
	else {
		speed=0;
		fire=true;
	}
}