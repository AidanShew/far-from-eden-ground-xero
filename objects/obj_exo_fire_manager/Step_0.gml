if (fire_timer<=0&&ds_list_size(fire_queue) > 0) {

    // Get the first enemy in the list
    shooter = fire_queue[| 0];

    if (instance_exists(shooter)) {
        // Fire from this enemy
        exo_bullet=instance_create_layer(shooter.x, shooter.y, "Instances", obj_exo_bullet);
		exo_bullet.direction=shooter.image_angle;
		exo_bullet.image_angle=exo_bullet.direction;
    }

    // Move this enemy to the end of the list for next turn
    ds_list_delete(fire_queue, 0);
    ds_list_add(fire_queue, shooter);
	fire_timer=fire_timer_default;
}

else { fire_timer-=1; }