if (800 < x && x < room_width-800) {
	red=false;
	sprite_index=spr_hunter_blue;
}
else {
	red=true;
	sprite_index=spr_hunter_red;
}

arrived_at_starting_location=false;
fire_counter=0;
default_still_timer=120;
still_timer=default_still_timer;
hunter_fire_limit=15;
stop_advance_player=500;
accelerate=0.1;
max_speed=5;
target_x=x;
target_y=y;

hunter_hp=25;
damage_animation=false;