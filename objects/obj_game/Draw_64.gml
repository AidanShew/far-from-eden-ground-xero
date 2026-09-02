if (activate_horde_intro) {
	draw_set_halign(fa_middle);
	draw_set_valign(fa_middle);
	draw_set_font(ft_menu);
	draw_set_color(make_color_rgb(255, 255, 255));
	draw_set_alpha(1);
	//Phase One of horde intro
	if (text_timer>0&&phase_one_intro) {
		draw_text(room_width*0.5,room_height*0.5, "Welcome to Horde");
	}
	
	//Phase Two of horde intro
	if (phase_two_intro&&text_timer>0) {
		draw_text(room_width*0.5, room_height*0.5, "Five waves make one round...");
	}
	
	//Phase Three of horde intro
	if (phase_three_intro&&text_timer>0) {
		draw_text(room_width*0.5, room_height*0.5, "After the fifth Round,\nyou're on your own...");
	}
	
	//Phase Four of horde intro
	if (phase_four_intro&&text_timer>0) {
		draw_text(room_width*0.5, room_height*0.5, "Fight until the end...");
	}
}