function attack_aimed(){
	if (fire_counter>=5) {
		mid_bullet=instance_create_layer(x,y,"Instances", obj_soldier_bullet);
		mid_bullet.direction=image_angle;
		mid_bullet.red=red;
		mid_bullet.speed=25;
		
		
		fire_counter=0;
	}
	else fire_counter++;
}