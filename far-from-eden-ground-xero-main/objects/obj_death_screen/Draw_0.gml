draw_set_color(make_color_rgb(255, 0, 0));

draw_set_alpha(clamp(red_opacity, 0, 1));

draw_rectangle(0,0, room_width, room_height, 0);