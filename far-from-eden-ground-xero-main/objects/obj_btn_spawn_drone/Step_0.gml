if (!instance_exists(obj_enemy)) {
	global.enemies_alive=0;
	drone_create(12, MOVE.ORBIT);
}
