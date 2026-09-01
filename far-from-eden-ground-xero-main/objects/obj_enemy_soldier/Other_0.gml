if (y>room_height+800 || y<-800 || x<-800 || x>room_width+800) {
	global.enemies_off_screen++;
	instance_destroy();
}