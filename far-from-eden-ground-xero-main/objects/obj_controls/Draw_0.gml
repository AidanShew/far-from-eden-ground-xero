if (visible) {
	draw_set_color(make_color_rgb(255, 255, 255));

	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);

	draw_set_font(ft_title);
	draw_set_alpha(1);
	draw_text(160, 280, "CONTROLS");

	draw_set_font(ft_menu);

	draw_text(160,350, "Move");

	draw_text(160,600, "Fire");

	draw_text(obj_key_fire.x+180, 600, "or");
}