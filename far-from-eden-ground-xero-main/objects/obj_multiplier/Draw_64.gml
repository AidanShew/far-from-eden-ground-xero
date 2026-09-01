draw_set_alpha(1);

draw_set_color(make_colour_rgb(0,255,255));
draw_rectangle(
	490, //Top left x
	750, //Top left y
	510, //Bottom right x
	bar_max, //Bottom right y
	false);

draw_set_color(make_color_rgb(255,255,255));
draw_rectangle(
	490,
	750,
	510,
	bar_fill,
	false);
	

draw_set_alpha(1);

draw_set_font(ft_multiplier);
draw_set_halign(fa_right);
draw_set_valign(fa_right);

if (instance_exists(obj_player)) {
	draw_set_color(make_color_rgb(255,255,255));
	draw_text(480,1000, ("x"+string(floor(obj_player.multiplier))));
}
else {
	draw_text(480,1000, "x1");
}