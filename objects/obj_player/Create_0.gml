depth=-99;

if (!instance_exists(obj_battle_feed)) instance_create_layer(x,y,"Instances", obj_battle_feed);
if (!instance_exists(obj_game)) instance_create_layer(x,y, "Instances", obj_game);
instance_create_layer(x,y,"Instances", obj_multiplier);

bullet_amplitude=20;

time=0;

default_combo_timer=90;
combo_timer=0
combo=0;

fire_counter=0;
fire_limit=3;
firing_side=false;
firing_up=false;

default_player_speed=15;
player_speed=default_player_speed;

red=false;

megadrive=false;
overshield=false;

default_pup_time=300
pup_timer=default_pup_time;

multiplier=1;

obj_game.player_hp=obj_game.default_player_hp;

immunity=true;
//immunity=obj_game.player_lives!=obj_game.default_player_lives;

default_immunity_timer=120;
immunity_timer=default_immunity_timer;
immortal=(immunity || overshield);