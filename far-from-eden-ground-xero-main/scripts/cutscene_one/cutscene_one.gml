function cutscene_one(){
	move_up_speed+=0.1
	switch (state) {
		case ("move_up"):
			if (point_distance(x, y, x, room_height/2) <= 10) state="still";
			else speed=move_up_speed;
			break;
			
		case ("still"):
			speed=0;
			y=room_height/2;
			if (point_distance(obj_runway.x, obj_runway.y, obj_runway.x, room_height/2) <= 10) {
				state="fly_out";
			}
			break;
			
		case ("fly_out"):
			speed=move_up_speed;
			if (y <= -10) obj_cutscene_one.fade_out=true;
			break;
	}
}