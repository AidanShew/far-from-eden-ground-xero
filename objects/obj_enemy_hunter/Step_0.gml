if (800 < x && x < room_width-800) {
	red=false;
	sprite_index=spr_hunter_blue;
}
else {
	red=true;
	sprite_index=spr_hunter_red;
}

/*
if (hunter_hp<5&&damage_animation==false) { 
	sprite_index=spr_hunter_getdamaged;
	if (image_index>=image_number-1) {
		sprite_index=spr_hunter_damaged;
		damage_animation=true;
	}
}
*/

if (instance_exists(obj_player)) { 
	if (obj_game.is_dead) {
		speed=10;
		still_timer=0;
		target_x=x;
		target_y=room_height-50;
	}
	else {
	
		image_angle=point_direction(x, y, obj_player.x, obj_player.y);
		if (arrived_at_starting_location) {	
	
			if (still_timer>0) {
				still_timer--;
				target_x=irandom_range(528, room_width - 528)
				target_y=irandom_range(50, room_height - 50);
			}
			else {
				move_towards_point(target_x,target_y, 10);

				if (point_distance(x,y, target_x, target_y) < 50) { 
					speed=0;
					still_timer=default_still_timer;
				}
			}
	
			if (fire_counter>=hunter_fire_limit) {
				hunter_bullet=instance_create_layer(self.x, self.y, "Instances", obj_hunter_bullet);
				hunter_bullet.direction=self.image_angle;
				hunter_bullet.image_angle=hunter_bullet.direction;
				hunter_bullet.red=red;
				fire_counter=0;
			}
			else { fire_counter+=1; }
		}
	
		//Arrived at starting location
		else if (y>=50) {
			arrived_at_starting_location=true;
			still_timer=10;
		}
	
		//Moving to starting location
		else if (y<50) {
			arrived_at_starting_location=false;
			y++;
		}
	}
}
else {
	speed=0;
}