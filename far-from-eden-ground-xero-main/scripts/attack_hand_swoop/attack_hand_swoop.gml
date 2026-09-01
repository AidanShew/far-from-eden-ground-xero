function attack_hand_swoop(left){	
	if (ready) {
		if (follow_timer>0) {
			y=obj_player.y;
			speed_ticker=0;
			if (instance_exists(obj_player)) follow_timer--;
		}
		else {
			speed_ticker=clamp(speed_ticker + 0.05, 0, 1);
			speed=lerp(0, 40, speed_ticker);
		}
	}
	
	else {
		image_ticker=clamp(image_ticker + 0.1, 0, 1);
		image_angle=lerp(image_angle, 
		left ? 90 : 270, 
		image_ticker);
		
		if (point_distance(x, y, left ? 528 : 1392, room_height/2)<=15) {
			ready=true;
			speed=0;
			direction=left ? 0 : 180;
		}
		else {
			direction=point_direction(
				x,
				y, 
				left ? 528 : 1392,
				room_height/2);
				
			speed_ticker=clamp(speed_ticker + 0.1, 0, 1);
			speed=lerp(0,15, speed_ticker);
		}
	}
}