function tre_polarity_switch(){
	switch (attack_type) {
		case (TRECLOPS_ATTACK.DESPERATE):
		case (TRECLOPS_ATTACK.STAR):
			polarity_timer--;
			if (array_length(bullet_star)==0&&polarity_timer<=0) {
				polarity_timer=300;
				red=!red;
			}
		break;
		
		case (TRECLOPS_ATTACK.PARTIAL_RAIN):
			if (--rain_timer%30==0) {
				red=!red;
				left=!left;
				offset=rain_timer-5;
			}
		break;
		
		case (TRECLOPS_ATTACK.FULL_RAIN):
			if (--rain_timer%120==0) {
				red=!red;
				left=!left;
				offset=rain_timer-30;
				firing=false;
			}
		break;
		
		
	}
}