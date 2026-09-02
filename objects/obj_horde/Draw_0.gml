if (!obj_game.is_dead) {
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(ft_menu);
	draw_set_color(make_color_rgb(255, 255, 255));
	draw_set_alpha(1);
	
	draw_text(264, 230, "Score");
	draw_line_width(364, 245, 164, 245, 3);
	draw_text(264, 270, string(obj_game.points));
	
	draw_text(264, 330, "High Score");
	draw_line_width(364, 345, 164, 345, 3);
	draw_text(264, 370, string(global.high_score));

	draw_text(room_width-264, 230, "Waves");
	draw_line_width(room_width-364, 245, room_width-164, 245, 3);
	
	draw_set_alpha(0.5);
	draw_sprite(round_00, 0, room_width-264, 270);
		
	draw_set_alpha(1);
	switch (horde_wave) {
		case 1:
		switch (horde_round) {
			case 1:
			draw_sprite(round_01, 0, room_width-264, 270);
			break;
			
			case 2:
			draw_sprite(round_06, 0, room_width-264, 270);
			draw_sprite(round_07, 0, room_width-264, 270);
			break;
			
			case 3:
			draw_sprite(round_05, 0, room_width-264, 270);
			draw_sprite(round_10, 0, room_width-264, 270);
			draw_sprite(round_11, 0, room_width-264, 270);
			break;
			
			case 4:
			draw_sprite(round_05, 0, room_width-264, 270);
			draw_sprite(round_10, 0, room_width-264, 270);
			draw_sprite(round_12, 0, room_width-264, 270);
			break;
			
			case 5:
			draw_sprite(round_21, 0, room_width-264, 270);
			break;
		}
		break;
		
		case 2:
		switch (horde_round) {
			case 1:
			draw_sprite(round_02, 0, room_width-264, 270);
			break;
			
			case 2:
			draw_sprite(round_05, 0, room_width-264, 270);
			draw_sprite(round_07, 0, room_width-264, 270);
			break;
			
			case 3:
			draw_sprite(round_05, 0, room_width-264, 270);
			draw_sprite(round_10, 0, room_width-264, 270);
			draw_sprite(round_12, 0, room_width-264, 270);
			break;
			
			case 4:
			draw_sprite(round_05, 0, room_width-264, 270);
			draw_sprite(round_10, 0, room_width-264, 270);
			draw_sprite(round_15, 0, room_width-264, 270);
			draw_sprite(round_13, 0, room_width-264, 270);
			break;
			
			case 5:
			draw_sprite(round_05, 0, room_width-264, 270);
			draw_sprite(round_10, 0, room_width-264, 270);
			draw_sprite(round_15, 0, room_width-264, 270);
			draw_sprite(round_20, 0, room_width-264, 270);
			draw_sprite(round_22, 0, room_width-264, 270);
			break;
		}
		break;
		
		case 3:
		switch (horde_round) {
			case 1:
			draw_sprite(round_03, 0, room_width-264, 270);
			break;
			
			case 2:
			draw_sprite(round_05, 0, room_width-264, 270);
			draw_sprite(round_08, 0, room_width-264, 270);
			
			break;
			case 3:
			draw_sprite(round_05, 0, room_width-264, 270);
			draw_sprite(round_10, 0, room_width-264, 270);
			draw_sprite(round_13, 0, room_width-264, 270);
			break;
			
			case 4:
			draw_sprite(round_05, 0, room_width-264, 270);
			draw_sprite(round_10, 0, room_width-264, 270);
			draw_sprite(round_15, 0, room_width-264, 270);
			draw_sprite(round_14, 0, room_width-264, 270);
			break;
			
			case 5:
			draw_sprite(round_05, 0, room_width-264, 270);
			draw_sprite(round_10, 0, room_width-264, 270);
			draw_sprite(round_15, 0, room_width-264, 270);
			draw_sprite(round_20, 0, room_width-264, 270);
			draw_sprite(round_23, 0, room_width-264, 270);
			break;
		}
		break;
		
		case 4:
		switch (horde_round) {
			case 1:
			draw_sprite(round_04, 0, room_width-264, 270);
			break;
			
			case 2:
			draw_sprite(round_05, 0, room_width-264, 270);
			draw_sprite(round_09, 0, room_width-264, 270);
			break;
			
			case 3:
			draw_sprite(round_05, 0, room_width-264, 270);
			draw_sprite(round_10, 0, room_width-264, 270);
			draw_sprite(round_14, 0, room_width-264, 270);
			break;
			
			case 4:
			draw_sprite(round_05, 0, room_width-264, 270);
			draw_sprite(round_10, 0, room_width-264, 270);
			draw_sprite(round_15, 0, room_width-264, 270);
			draw_sprite(round_19, 0, room_width-264, 270);
			break;
			
			case 5:
			draw_sprite(round_05, 0, room_width-264, 270);
			draw_sprite(round_10, 0, room_width-264, 270);
			draw_sprite(round_15, 0, room_width-264, 270);
			draw_sprite(round_20, 0, room_width-264, 270);
			draw_sprite(round_24, 0, room_width-264, 270);
			break;
		}
		break;
		
		case 5:
		switch (horde_round) {
			case 1:
			draw_sprite(round_05, 0, room_width-264, 270);
			break;
			
			case 2:
			draw_sprite(round_05, 0, room_width-264, 270);
			draw_sprite(round_10, 0, room_width-264, 270);
			break;
			
			case 3:
			draw_sprite(round_05, 0, room_width-264, 270);
			draw_sprite(round_10, 0, room_width-264, 270);
			draw_sprite(round_15, 0, room_width-264, 270);
			break;
			
			case 4:
			draw_sprite(round_05, 0, room_width-264, 270);
			draw_sprite(round_10, 0, room_width-264, 270);
			draw_sprite(round_15, 0, room_width-264, 270);
			draw_sprite(round_20, 0, room_width-264, 270);
			break;
			
			case 5:
			draw_sprite(round_05, 0, room_width-264, 270);
			draw_sprite(round_10, 0, room_width-264, 270);
			draw_sprite(round_15, 0, room_width-264, 270);
			draw_sprite(round_20, 0, room_width-264, 270);
			draw_sprite(round_25, 0, room_width-264, 270);
			break;
		}
		break;
	}
}