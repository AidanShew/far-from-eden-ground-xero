if (room!=rm_menu) {
	draw_set_alpha(0.5);
	draw_set_colour(make_color_rgb(0,0,0));
	draw_rectangle(0, 0, 528, room_height, false);
	draw_rectangle(room_width-528, 0, room_width, room_height, false);
}