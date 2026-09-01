function move_cross() {
	if (y<(room_height/2)-250) {
		if (x>room_width/2) direction-=1.5;
		else direction+=1.5;
	}
	
	image_angle=direction;
	
	if (y>((room_height/2)-250)) {
		if (fire_counter>=15) {
			var bullet=instance_create_layer(x, y, "Instances", obj_soldier_bullet);
			bullet.direction=270;
			bullet.red=red;
			fire_counter=0;
		}
		else fire_counter++;	
	}
}