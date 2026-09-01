function move_helix2(){
	if (y<(room_height/2)-150) {
		if (!left) direction+=2;
		else direction-=2;
	}
	else {
		t++;
		speed=5;
		if (!left) x = ((room_width/2)+300) + sin(t * 0.1) * 60;
		else direction = 270 - sin(current_time / 200) * 45;
	}
	image_angle=direction;
}
