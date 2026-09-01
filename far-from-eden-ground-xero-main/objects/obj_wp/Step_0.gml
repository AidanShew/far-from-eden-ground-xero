fire_counter+=1;

switch (state) {
	//Enters the battle
	case "phase1_enter":
		if (point_distance(x, y, room_width/2, 100) < 5) {
			speed=0;
			state="phase1_unload";
		}
		else move_towards_point(room_width/2, 100, wp_speed);
		
		break;
	
	//Unfolding Animation
	case "phase1_unload":
		if (image_index<image_number-1) image_speed=image_index_speed;
		else {
			image_index=image_number-1;
			image_speed=0;
			
			top_direction=225;
			top_state="increase";
			
			bottom_direction=315;
			bottom_state="decrease";
			
			mid_direction=270;
			mid_state="increase";
			
			var i=irandom(1);
			if (i==1) wp_state="left";
			else wp_state="right";
			
			state="phase1_attack";
		}
		break;
	
	case "phase1_attack":
	
		if (fire_counter>=phase1_fire_limit) {
			
			switch (top_state) {
				case "increase":
					top_direction+=7;
					if (top_direction>=250) top_state="decrease";
					break;
				
				case "decrease":
					top_direction-=7;
					if (top_direction<=220) top_state="increase";
					break;
			}
			switch (bottom_state) {
				case "increase":
					bottom_direction+=7;
					if (bottom_direction>=310) bottom_state="decrease";
					break;
				
				case "decrease":
					bottom_direction-=7;
					if (bottom_direction<=290) bottom_state="increase";
					break;
			}
			switch (mid_state) {
				case "increase":
					mid_direction+=4;
					if (mid_direction>=275) mid_state="decrease";
					break;
				
				case "decrease":
					mid_direction-=4;
					if (mid_direction<=265) mid_state="increase";
					break;
			}
			switch (wp_state) {
				case "right":
					move_towards_point(1292, y, wp_speed);
					
					if (x>=1292) {
						wp_state="left";
						if (default_wp_hp-50<wp_hp&&wp_hp<=default_wp_hp-25) {
							wp_speed=default_speed+2;
							phase1_fire_limit=default_wp_fire_limit+2;
						}
						else if (default_wp_hp-75<wp_hp&&wp_hp<=default_wp_hp-50) {
							wp_speed=default_speed+5;
							phase1_fire_limit=default_wp_fire_limit+5;
						}
						else if (default_wp_hp-100<wp_hp&&wp_hp<=default_wp_hp-75) {
							wp_speed=default_speed+7;
							phase1_fire_limit=default_wp_fire_limit+7;
						}
						else if (wp_hp>default_wp_hp-25) wp_speed=default_speed;
					}
					break;
				
				case "left":
					move_towards_point(628, y, wp_speed);
					
					if (x<=628) {
						wp_state="right";
						if (default_wp_hp-50<wp_hp&&wp_hp<=default_wp_hp-25) {
							wp_speed=default_speed+2;
							phase1_fire_limit=default_wp_fire_limit+1;
						}
						else if (default_wp_hp-75<wp_hp&&wp_hp<=default_wp_hp-50) {
							wp_speed=default_speed+5;
							phase1_fire_limit=default_wp_fire_limit+3;
						}
						else if (default_wp_hp-100<wp_hp&&wp_hp<=default_wp_hp-75) {
							wp_speed=default_speed+7;
							phase1_fire_limit=default_wp_fire_limit+5;
						}
						else if (wp_hp>default_wp_hp-25) wp_speed=default_speed;
					}
					break;
			}
			
			top_bullet=instance_create_layer(x, y, "Instances", obj_wpbullet);
			top_bullet.direction=top_direction;
			top_bullet.speed=15;
				
			mid_bullet=instance_create_layer(x, y, "Instances", obj_wpbullet);
			mid_bullet.direction=mid_direction;
			mid_bullet.speed=15;
			
			bottom_bullet=instance_create_layer(x, y, "Instances", obj_wpbullet);
			bottom_bullet.direction=bottom_direction;
			bottom_bullet.speed=15;
			
			fire_counter=0;
		}
		if (wp_hp<=phase2_hp) state="phase1_packup";
		
		break;
	
	case "phase1_packup":
		if (image_index>=1) image_speed=-image_index_speed;
		else {
			image_speed = 1;
			image_index = 1;
			state="phase1_exit";
		}
		break;
	
	case "phase1_exit":
		if (y>=-100) move_towards_point(room_width/2, -100, wp_speed);
		else {
			x=room_width+100;
			y=room_height/2;
			state="phase2_enter";
			break;
		}
		break;
	
	
	/*	
	---	Phase 2	---
	*	popout left/right: Determines which side the whirlpool will enter the screen.
		*	Switches to opposite side after the previous popout is complete.
		
	*	phase2_enter: Entering animation
	*	phase2_rotate: Rotating animation
	*	phase2_unload: Unfolding animation
	*	phase2_attack: Firing
	
	*/
		
	case "phase2_enter":
		image_angle=0;
		if (popout=="right") {
			sprite_index=spr_whirlpool_left_ani;
			image_index=0;
			if (point_distance(x,y,room_width-628,room_height/2)>=10) move_towards_point(room_width-628, room_height/2, wp_speed);
			else {
				state="phase2_rotate";
				break;
			}
		}
		else {
			sprite_index=spr_whirlpool_right_ani;
			image_index=0;
			if (point_distance(x,y,628,room_height/2)>=10) move_towards_point(628, room_height/2, wp_speed);
			else {
				state="phase2_rotate";
				break;
			}
		}
		break;
		
	case "phase2_rotate":
		speed=0;
		if (image_angle >= 90) {
			image_angle = 90;
			state = "phase2_unload";
		}
		else image_angle += 2;
		
		break;
	
	case "phase2_unload":
		if (image_index!=image_number-1) {
			if (image_index >= image_number - 1) {
				image_index = image_number - 1;
				image_speed = 0;
			}
			else image_speed=image_index_speed;
		}
		else {
			if (popout=="right") {
				top_direction=135;
				top_state="increase";
				
				bottom_direction=225;
				bottom_state="decrease";
				
				mid_direction=180;
				mid_state="increase";
			}
			else if (popout=="left") {
				top_direction=45;
				top_state="increase";
				
				bottom_direction=315;
				bottom_state="decrease";
				
				mid_direction=360;
				mid_state="increase";
			}
			
			state="phase2_attack";
			break;
		}
		break;
	
	case "phase2_attack":	
		if (timer>0) {
			if (popout=="right") x=room_width-628;
			else if (popout=="left") x=628;
			
			switch (top_state) {
				case "increase":
					top_direction+=7;
					if (popout=="right"&&top_direction>=135) top_state="decrease";
					else if (popout=="left"&&top_direction>=45) top_state="decrease";
					break;
				
				case "decrease":
					top_direction-=7;
					if (popout=="right"&&top_direction<=155) top_state="increase";
					else if (popout=="left"&&top_direction<=25) top_state="increase";
					
					break;
			}
			switch (bottom_state) {
				case "increase":
					bottom_direction+=7;
					if (popout=="right"&&bottom_direction>=225) bottom_state="decrease";
					else if (popout=="left"&&bottom_direction>=315) bottom_state="decrease";
					break;
				
				case "decrease":
					bottom_direction-=7;
					if (popout=="right"&&bottom_direction<=205) bottom_state="increase";
					else if (popout=="left"&&bottom_direction<=340) bottom_state="increase";
					break;
			}
			switch (mid_state) {
				case "increase":
				mid_direction+=4;
					if (popout=="right"&&mid_direction>=185) mid_state="decrease";
					else if (popout=="left"&&mid_direction>=365) mid_state="decrease";
				break;
				
				case "decrease":
					mid_direction-=4;
					if (popout=="right"&&mid_direction<=175) mid_state="increase";
					else if (popout=="left"&&mid_direction<=355) mid_state="increase";
					break;
			}
			
			y=room_height/2;
			
			//Firing manager
			if (fire_counter>=wp_fire_limit) {
				top_bullet=instance_create_layer(x, y, "Instances", obj_wpbullet);
				top_bullet.direction=top_direction;
				top_bullet.speed=15;
				
				mid_bullet=instance_create_layer(x, y, "Instances", obj_wpbullet);
				mid_bullet.direction=mid_direction;
				mid_bullet.speed=15;
			
				bottom_bullet=instance_create_layer(x, y, "Instances", obj_wpbullet);
				bottom_bullet.direction=bottom_direction;
				bottom_bullet.speed=15;
					
				timer--;
				fire_counter=0;
			}

		}
		else state="phase2_packup";
		
		if (wp_hp<=phase3_hp) state="phase3";
		break;
		
	case "phase2_packup":
		if (image_index>=1) image_speed=-image_index_speed;
		else {
			image_speed = 1;
			image_index = 1;
			state="phase2_straighten";
		}
		break;
		
	case "phase2_straighten":
		speed=0;
		if (image_angle >= 0) image_angle-=5;
		else {
			image_angle = 0;
			state = "phase2_exit";
		}
		show_debug_message("Image Angle: "+string(image_angle));
		
		break;
		
		
	case "phase2_exit":
		if (popout=="right") {
			if (x<=room_width+50) {
				move_towards_point(room_width+50, room_height/2, wp_speed_phase2);
			}
			else {				
				x=-50;
				y=room_height/2;
				image_angle=0;
				popout="left";
				timer=default_timer;
				state="phase2_enter";
				break;
			}
		}
		else {
			if (x>=-50) {
				move_towards_point(-50, room_height/2, wp_speed_phase2);
			}
			else {
				x=room_width+50;
				y=room_height/2;
				image_angle=0;
				timer=default_timer;
				popout="right"
				state="phase2_enter";
				break;
			}
		}
		break;
	
	case "phase3":
		sprite_index=spr_whirlpool_full;
		image_angle+=2;
		if (point_distance(x, y, room_width/2, room_height/2)>15) move_towards_point(room_width/2, room_height/2, wp_speed);
		if (fire_counter>=phase3_fire_limit) {
			left_top_bullet=instance_create_layer(x, y, "Instances", obj_wpbullet);
			left_top_bullet.direction=image_angle-45;
		
			left_middle_bullet=instance_create_layer(x, y, "Instances", obj_wpbullet);
			left_middle_bullet.direction=image_angle-90;
		
			left_bottom_bullet=instance_create_layer(x, y, "Instances", obj_wpbullet);
			left_bottom_bullet.direction=image_angle-135;
		
			right_top_bullet=instance_create_layer(x, y, "Instances", obj_wpbullet);
			right_top_bullet.direction=image_angle+45;
		
			right_middle_bullet=instance_create_layer(x, y, "Instances", obj_wpbullet);
			right_middle_bullet.direction=image_angle+90;
		
			right_bottom_bullet=instance_create_layer(x, y, "Instances", obj_wpbullet);
			right_bottom_bullet.direction=image_angle+135;
		
			fire_counter=0;
		}
		break;
}