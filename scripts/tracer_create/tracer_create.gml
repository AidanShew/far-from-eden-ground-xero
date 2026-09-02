function tracer_create(amount, move_type, alignment, start_y=0, start_x=0, red=noone){
	for (var i=0; i<amount; i++) {
		var enemy=instance_create_layer(start_x, start_y, "Instances", obj_tracer);
		enemy.move_type=move_type;
		enemy.alignment=alignment;
		enemy.red=red;
		
		switch (move_type) {
			case TRACER_MOVE.FROM_BOTTOM:
			enemy.image_angle=90;
			break;
			
			case TRACER_MOVE.FROM_LEFT:
			enemy.image_angle=0;
			break;
			
			case TRACER_MOVE.FROM_RIGHT:
			enemy.image_angle=180;
			break;
			
			case TRACER_MOVE.FROM_TOP:
			enemy.image_angle=270;
			break;
		}
	}
}