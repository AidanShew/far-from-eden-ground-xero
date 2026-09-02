show_debug_message("Red Status: "+string(red));
if (red) {
	red=false;
	sprite_index = spr_to_blue;

	image_index = 0;
	image_speed = 1;
}
else {
	red=true;
	sprite_index=spr_to_red;
	
	image_index=0;
	image_speed=1;
}