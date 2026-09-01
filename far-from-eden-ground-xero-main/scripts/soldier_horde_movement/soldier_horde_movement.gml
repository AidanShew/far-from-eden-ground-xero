function soldier_horde_movement(){
	y+=y_speed;
	if (left) x-=x_speed;
	else x+=x_speed;

	if (y > room_height*0.25) {
		if (y_speed > 0) y_speed-=0.03;
		if (x_speed < 5) x_speed+=0.1;
	}

	if (left && x < 500) {
		check_for_advance();
		instance_destroy();
	}

	else if (!left && x > room_width-500) {
		check_for_advance();
		instance_destroy();
	}
}