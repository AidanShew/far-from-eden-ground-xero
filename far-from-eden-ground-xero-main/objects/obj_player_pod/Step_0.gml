switch (obj_player_puppet.state) {
	case ("move_up"):
	speed=obj_player_puppet.speed;
	break;
	
	case ("still"):
	speed=0
	if (image_index==27) image_speed=0;
	else image_speed=3;
	break;
	
	case ("fly_out"):
	image_speed=0;
	image_index=27;
	break;
}