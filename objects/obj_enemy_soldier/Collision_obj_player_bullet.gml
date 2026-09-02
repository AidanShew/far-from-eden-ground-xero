instance_destroy(other);
var sound=choose(Explosion, Explosion1, Explosion2, Explosion3);
audio_play_sound(sound, 1, false);
if (variable_instance_exists(self, red)&&self.red==other.red) enemy_health-=0.5;
else enemy_health--;

if (enemy_health<=0) {
	if (move_type==MOVE.REVOLVER_RIGHT) {
		array_delete(obj_revolver_right_p.revolver_soldiers, array_get_index(obj_revolver_right_p.revolver_soldiers, id), 1);
	}
	else if (move_type==MOVE.REVOLVER_LEFT) {
		array_delete(obj_revolver_left_p.revolver_soldiers, array_get_index(obj_revolver_left_p.revolver_soldiers, id), 1);
	}
	global.enemies_off_screen++;
	instance_destroy(self);
}