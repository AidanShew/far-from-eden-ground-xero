function tre_hand_calibrate(){
	if (point_distance(x,y, path[0], path[1])<=15) {
		image_angle=45;
		attack_type=TRECLOPS_ATTACK.NONE;
		phase=mother.phase;
		speed=0;
	}
	else {
		direction=point_direction(x,y, path[0], path[1]);
		image_angle=direction;
		speed=15;
	}
}