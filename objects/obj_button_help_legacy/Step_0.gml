if (hide_stats&&transition) {
	if (!instance_exists(obj_button_horde)) {
		instance_destroy(obj_controls);
		instance_create_layer(928, 576, "Instances", obj_button_horde);
		obj_button_horde.image_alpha=0;
		instance_create_layer(928, 768, "Instances", obj_button_career);
		obj_button_career.image_alpha=0;
		instance_create_layer(352, 1024, "Instances", obj_button_quit);
		obj_button_quit.image_alpha=0;
	}
	if (obj_button_horde.image_alpha<1) {
		obj_button_horde.image_alpha+=0.25;
		obj_button_career.image_alpha+=0.25;
		obj_button_quit.image_alpha+=0.25;
		draw_set_alpha(text_alpha);
		if (text_alpha<=0) {text_alpha+=0.5}
		if (obj_button_controls.y>672) { obj_button_controls.y-=50; }
	}
	else {
		obj_button_horde.image_alpha=1;
		obj_button_career.image_alpha=1;
		obj_button_quit.image_alpha=1;
		draw_set_alpha(1);
		transition=false;
	}
}
//Making text appear and the buttons disappear
if (left_press) {
	if (instance_exists(obj_button_horde)) {
		if (obj_button_horde.image_alpha<=0) {
			instance_destroy(obj_button_quit);
			instance_destroy(obj_button_horde);
			instance_destroy(obj_button_career);
			draw_set_alpha(1);
		}
		else {
			obj_button_horde.image_alpha-=0.25;
			obj_button_career.image_alpha-=0.25;
			obj_button_quit.image_alpha-=0.25;
			if (obj_button_controls.y<864) { obj_button_controls.y+=50; }
			draw_set_alpha(text_alpha);
			
			if (text_alpha>=0) {text_alpha-=0.25};
		}
	}
	else {
		if (!instance_exists(obj_controls)) { instance_create_layer(600, 576,"Instances",obj_controls); }
	}
}
