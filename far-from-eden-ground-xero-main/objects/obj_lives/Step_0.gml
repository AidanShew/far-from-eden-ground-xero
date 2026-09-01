
if (instance_exists(obj_player)) {
	x=obj_player.x;
	y=obj_player.y;
	
	p_lives=obj_game.player_lives;

	if (p_lives==3) {
		sprite_index=lives_4;
		last_sprite=lives_4;
		}

	else if (p_lives==2) { 
		sprite_index=lives_3;
		last_sprite=lives_3;
		}

	else if (p_lives==1) { 
		sprite_index=lives_2;
		last_sprite=lives_2;
		}

	else { 
		sprite_index=lives_1;
		last_sprite=lives_1;
		}
}
else { sprite_index=last_sprite; }

if (obj_game.is_dead) {
	if (image_alpha<=0) { instance_destroy(); }
	else { image_alpha-=0.1 }
}