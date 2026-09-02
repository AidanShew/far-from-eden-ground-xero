speed=irandom_range(3,5);
if (instance_exists(obj_player)) {
	direction=irandom_range(obj_player.y-50, obj_player.y+50); //direction can be a random number from 0-360.
}
else {
	direction=irandom_range(450,550);
}
image_angle=random(360); //direction can be anything from 0-360 as well.