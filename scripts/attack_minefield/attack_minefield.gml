function attack_minefield(mine_alignment){
	if (fire) {
		soldier_bullet=instance_create_layer(self.x, self.y, "Instances", obj_mine_bullet);
		switch (mine_alignment) {
			case (MINE_ALIGNMENT.LEFT):
			soldier_bullet.path=[550, 650, 750, 850, 950];
			break;
			
			case (MINE_ALIGNMENT.RIGHT):
			soldier_bullet.path=[970, 1070, 1170, 1270, 1370];
			break;
			
			case (MINE_ALIGNMENT.CENTER):
			soldier_bullet.path=[650, 700, 750, 800, 850, 900, 950, 1000, 1050, 1100, 1150, 1200, 1250];
			break;
		}
		//744 is middle of left screen, 1176 is right
		soldier_bullet.red=red;
		fire=false;
	}
}