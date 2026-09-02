draw_set_color(make_color_rgb(255, 255, 255));

draw_set_halign(fa_left);
draw_set_valign(fa_center);
draw_set_font(Font3);
draw_set_alpha(text_time*2/60) //fades out

for (var i=0; i<ds_list_size(battle_messages); i++) {
	if (i<=5) {
		draw_text(x, y-i*20, battle_messages[| i]);
	}
}