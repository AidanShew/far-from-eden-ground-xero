function move_figure_eight(){
	if (x>room_width/2) direction-=1;
	else direction+=1;
	
	if (point_distance(x,y,x, (room_height/2)-150)<=50) {
		if (fire_counter>=10) {
			var bullet=instance_create_layer(x, y, "Instances", obj_soldier_bullet);
			bullet.direction=image_angle;
			fire_counter=0;
		}
		else fire_counter++;	
	}
}