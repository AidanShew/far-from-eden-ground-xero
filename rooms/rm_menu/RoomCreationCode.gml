gpu_set_texfilter(false);

if (!variable_global_exists("recent_life_count")) { global.recent_life_count=0; }

if (!variable_global_exists("highest_rank")) { global.highest_rank="No Rank Yet"; }

if (!variable_global_exists("horde_wave")) { global.horde_wave = 0; }

if (!variable_global_exists("recent_wave")) { global.recent_wave = 0; }

if (!variable_global_exists("highest_round")) { global.highest_round = 0; }

if (!variable_global_exists("high_score")) { global.high_score = 0; }

if (!instance_exists(obj_game)) { instance_create_layer(0,0,"Instances", obj_game); }

if (!instance_exists(obj_scrolling_text)) { instance_create_layer(0,0,"Instances", obj_scrolling_text); }

if (!instance_exists(obj_main_menu)) { instance_create_layer(0,0,"Instances",obj_main_menu); }

if (!instance_exists(obj_earth)) { instance_create_layer(room_width*0.5, -25, "Instances", obj_earth); }

if (!instance_exists(obj_key_move)) { instance_create_layer(350, 350, "Instances", obj_key_move); }

if (!instance_exists(obj_controls)) { instance_create_layer(0,0,"Instances", obj_controls); }

if (!instance_exists(obj_key_fire)) { instance_create_layer(300, 550, "Instances", obj_key_fire); }

if (!instance_exists(obj_key_arrows)) { instance_create_layer(600, 550, "Instances", obj_key_arrows); }

if (!instance_exists(obj_career)) { instance_create_layer(600,576,"Instances", obj_career); }

if (!instance_exists(obj_pause_manager)) { instance_create_layer(0,0,"Instances", obj_pause_manager);  }
	
if (!instance_exists(obj_ratio)) { instance_create_layer(0,0,"Instances", obj_ratio); }