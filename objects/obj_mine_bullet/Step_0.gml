if (red) sprite_index=spr_soldier_red_bullet;
else sprite_index=spr_soldier_blue_bullet;

if (y>=ystart+50) {
	cols = array_length(path);

	for (var i=0; i<cols*4; i++) {

	    col = i mod cols;
	    row = floor(i / cols);

	    bullet_x = path[col];
	    bullet_y = y + row * 100;

	    micro_bullet = instance_create_layer(
	        bullet_x,
	        bullet_y,
	        "Instances",
	        obj_micro_bullet
	    );

	    micro_bullet.red = red;
	}
	instance_destroy();
}