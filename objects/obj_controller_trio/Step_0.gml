show_debug_message("Move Timer: "+string(move_timer));
var target_x=(room_width/2);
var target_y=350;
var orbit_speed= 10;
move_timer--;

//Enemy Soldier
if (instance_exists(obj_enemy_soldier)) {
	show_debug_message("X: "+string(x)+"\nY: "+string(y));
	if (obj_enemy_soldier.arrival&&move_timer>0) {
		x=target_x;
		y=target_y;
		
		speed=0;
		if (revolver_timer>0) {
			with (obj_enemy_soldier) fire= rotation_order=0;
			if (array_length(revolver_soldiers)>1) revolver_timer--;
		}
		else {
			with (obj_enemy_soldier) {
				fire=false;
				orbit_offset+=min(orbit_speed, 90 - orbit_offset);
				if (orbit_offset>=90) {
					other.revolver_timer=20;
					orbit_offset=0;
					rotation_order=(rotation_order+1) mod 4;
				}
				orbit_angle+=orbit_speed;
				x= controller.x + (lengthdir_x(75, orbit_angle));
				y= controller.y + (lengthdir_y(75, orbit_angle));
			}
		}
	}
	else if (!obj_enemy_soldier.arrival) {
		speed=20;
		direction=point_direction(x,y, target_x, target_y);
		if (point_distance(x,y, target_x, target_y)<=15) obj_enemy_soldier.arrival=true;
	}
	else if (move_timer<=0) {
		speed=20;
		direction+=0.5
	}
}

//Enemy Drones
if (instance_exists(obj_enemy_drone)) {
	var left_index=array_length(star_drones_left)-1;
	var right_index=array_length(star_drones_right)-1;
	
	if (star_timer<=0) {
		if (array_length(star_drones_left)>=array_length(star_drones_right)) {
			star_drones_left[left_index].is_thrown=true;
			array_delete(star_drones_left, left_index, 1);
		}
		else if (array_length(star_drones_right)>array_length(star_drones_left)) {
			star_drones_right[right_index].is_thrown=true;
			array_delete(star_drones_right, right_index, 1);
		}
		star_timer=60;
	}
	else if (obj_enemy_drone.arrived) star_timer--;
}