// ---This function handles movement and firing---

function whirlpool_movement(){
	var max_speed=5;
	var x_mid=room_width*0.5;
	var y_mid=room_height*0.5;
	
	if (!whirlpool_arrived) {
		if (point_distance(x, y, x_mid, y_mid)<4) {
			whirlpool_arrived=true;
			show_debug_message(string("No followers found"));
			alarm[2]=60;
		}
		else {

			move_towards_point(x_mid, x_mid, max_speed);
			if (instance_exists(obj_player)){
				image_angle=point_direction(x, y, obj_player.x, obj_player.y);
			}
			
			// ---Fire rate manager---
			if (fire_counter>=wp_fire_limit) {
				wp_bullet=instance_create_layer(x,y,"Instances", obj_wpbullet);
				wp_bullet.direction=self.image_angle;
				wp_bullet.image_angle=wp_bullet.direction;
				fire_counter=0;
			}
		}
	}
	else if (whirlpool_arrived) {
		default_wp_fire_limit=5;
		speed=0;
		image_angle+=2;
		// ---Dual Fire Rate Manager---
		if (fire_counter>=wp_fire_limit) {
			wp_bullet_f=instance_create_layer(x,y,"Instances", obj_wpbullet);
			wp_bullet_f.direction=self.image_angle;
			wp_bullet_f.image_angle=wp_bullet_f.direction;
			wp_bullet_b=instance_create_layer(x,y,"Instances", obj_wpbullet);
			wp_bullet_b.direction=self.image_angle+180;
			wp_bullet_b.image_angle=wp_bullet_b.direction;
			fire_counter=0;
		}
	}
}