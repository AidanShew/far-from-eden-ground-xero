if (obj_star.y>=room_height) {
	instance_destroy();
}

else {
	direction=-90;
}

if (star_shape==0) {
	if (room==rm_menu&&obj_player_puppet2.arrived) {
		speed=1;
	}
	else {
		speed=5;
	}
}

if (star_shape==1) {
	if (room==rm_menu&&obj_player_puppet2.arrived) {
		speed=5;
	}
	else {
		speed=15;
	}
}


else if (star_shape==2) {
	if (room==rm_menu&&obj_player_puppet2.arrived) {
		speed=10;
	}
	else {
		speed=25;
	}
}