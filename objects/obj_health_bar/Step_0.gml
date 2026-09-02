

if (instance_exists(obj_player)) {
	x=obj_player.x;
	y=obj_player.y;
	if (obj_player.overshield) { sprite_index=spr_health_bar_overshield0; }
	else {
		p_health=obj_game.player_hp;
		
		if (eight==p_health) { sprite_index=health_8; }
	
		else if (seven<=p_health&&p_health<eight) { sprite_index=health_7; }

		else if (six<=p_health&&p_health<seven) { sprite_index=health_6; }

		else if (five<=p_health&&p_health<six) { sprite_index=health_5; }
	
		else if (four<=p_health&&p_health<five) { sprite_index=health_4; }
	
		else if (three<=p_health&&p_health<four) { sprite_index=health_3; }
	
		else if (two<=p_health&&p_health<three) { sprite_index=health_2; }
	
		else if (one<=p_health&&p_health<two) { sprite_index=health_1; }
	
		else { sprite_index=health_0; }
	}
}
else {
	sprite_index=health_0;
}

if (obj_game.is_dead) {
	if (image_alpha<=0) { instance_destroy(); }
	else { image_alpha-=0.1 }
}