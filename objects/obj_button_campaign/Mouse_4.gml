// Inherit the parent event
event_inherited();
audio_play_sound(announcer_story_mode, 1, false);

if (instance_exists(obj_player_puppet2)) {
	obj_player_puppet2.rm="story";
	obj_player_puppet2.go=true;
}
