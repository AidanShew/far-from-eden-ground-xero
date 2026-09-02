if (visible) {
	draw_set_color(make_color_rgb(255, 255, 255));
	draw_set_alpha(1);
	if (room==rm_menu) {
		draw_set_halign(fa_left);
		draw_set_valign(fa_middle);
		draw_set_font(ft_title);
		draw_text(160, 280, "PLAYER RECORD");
		draw_set_font(ft_menu);
		draw_text(160,380, "Highest Round Reached: "+string(global.highest_round));
		draw_text(160, 480, "High Score: "+string(global.high_score));
		draw_text(160,580, "Rank: "+string(global.highest_rank));
	}
}