function soldier_movement_2(){
	if (y > room_height*0.25) {
			if (y_speed > 0) y_speed-=0.03;
			if (x_speed < 5) x_speed+=0.1;
	}
	else y+=y_speed;
		
	if (left) {
		if (x < 500) {
			global.enemies_killed--;
			instance_destroy();
		}
		else x-=x_speed;
	}
	else {
		if (x > room_width-500) {
			global.enemies_killed--;
			instance_destroy();
		}
		else x+=x_speed;
	}
}