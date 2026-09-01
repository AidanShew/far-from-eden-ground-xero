if (obj_game.end_of_intro) {
	y+=0.01;
}
if (instance_exists(obj_horde)) {
	if (obj_horde.horde_round>3) {
		sprite_index=spr_earth_destroy;
	}
}