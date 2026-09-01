instance_create_layer(0,0,"Instances", obj_game);
obj_game.activate_horde_intro=true;
instance_create_layer(0,0,"Instances", obj_player_puppet);
instance_create_layer(0,0,"Instances", obj_career);
instance_create_layer(1000, -640, "Instances", obj_earth);
if (!instance_exists(obj_battle_feed)) instance_create_layer(0,0, "Instances", obj_battle_feed);