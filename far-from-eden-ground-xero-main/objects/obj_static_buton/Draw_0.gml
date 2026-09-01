draw_self(); //makes font appear on button

draw_set_color(make_color_rgb(255, 255, 255));
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_alpha(1);

draw_text(x, y+10, button_text);

draw_set_font(ft_menu);
