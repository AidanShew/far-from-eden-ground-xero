obj_game.playerLives-=1;
effect_create_above(ef_firework, x, y, 1, c_white); //Creates effect
instance_destroy(obj_player);
obj_game.alarm[2]=120;
