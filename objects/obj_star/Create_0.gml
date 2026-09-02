star_shape=irandom(2);
if (star_shape==0){
	depth=80;
	
	star_color=irandom(3);
	if (star_color==0) {
		sprite_index=spr_small_star0;
	}
	else if (star_color==1) {
		sprite_index=spr_small_star1;
	}
	else if (star_color==2) {
		sprite_index=spr_small_star2;
	}
	else {
		sprite_index=spr_small_star3;
	}
}

else if (star_shape==1){
	depth=79;

	star_color=irandom(7);
	if (0<=star_color&&star_color<=2) {
		sprite_index=spr_med_star0;
	}
	else if (3<=star_color&&star_color<=6) {
		sprite_index=spr_med_star1;
	}
	else if (7<=star_color&&star_color<10) {
		sprite_index=spr_med_star2;
	}
	else if (star_color==10) {
		sprite_index=spr_med_star3;
	}
}

else if (star_shape==2){
	depth=78;

	star_color=irandom(3);
	if (star_color==0) {
		sprite_index=spr_large_star0;
	}
	else if (star_color==1) {
		sprite_index=spr_large_star1;
	}
	else {
		sprite_index=spr_large_star2;
	}
}
