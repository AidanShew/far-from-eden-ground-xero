instance_destroy(other);
var sound=choose(Explosion, Explosion1, Explosion2, Explosion3);
audio_play_sound(sound, 1, false);
if (global.tre_phase==TRECLOPS_PHASE.THREE) { 
	if (self.red==other.red) enemy_health-=0.5;
	else enemy_health--;
}

if (enemy_health<=0) {
	global.enemies_off_screen++;
	global.tre_phase=TRECLOPS_PHASE.FOUR;
	instance_destroy(self);
}