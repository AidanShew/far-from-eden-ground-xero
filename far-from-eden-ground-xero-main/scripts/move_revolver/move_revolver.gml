function move_revolver(){
	sprite_index=red ? spr_soldier_red : spr_soldier_blue;
	if (!arrival) { //Hasn't reached initial_target_x
		if (move_type==MOVE.REVOLVER_RIGHT) {
			speed= x>initial_target_x ? 10 : 0;
			arrival=x<=initial_target_x;
		}
		else {
			speed=x<initial_target_x ? 10 : 0;
			arrival= x>=initial_target_x;
		}
		fire=arrival;
	}
	else {
		fire= rotation_order=0;
	}
}