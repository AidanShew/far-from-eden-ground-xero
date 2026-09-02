draw_set_color(make_color_rgb(255, 255, 255));

draw_set_halign(fa_center);

draw_set_font(ft_menu);

draw_text(room_width*0.5, room_height*.3, "You Died!");

if (red_opacity>=0.5&&!instance_exists(obj_button_quit)&&!instance_exists(obj_button_menu)) {

	draw_set_alpha(1);

	instance_create_layer(352, 960, "Instances", obj_button_quit);

	instance_create_layer(352, 192, "Instances", obj_button_menu);
}