t++;
switch(move_type) {
	case TRACER_MOVE.FROM_BOTTOM:
	y-=move_speed;
	break;
	
	case TRACER_MOVE.FROM_LEFT:
	x+=move_speed;
	y=ystart + sin(t * wave_frequency) * wave_amplitude;
	break;
	
	case TRACER_MOVE.FROM_RIGHT:
	x-=move_speed;
	y=ystart + sin(t * wave_frequency) * wave_amplitude;
	break;
	
	case TRACER_MOVE.FROM_TOP:
	y+=move_speed;
	break;
}
if (move_type!=TRACER_MOVE.FROM_LEFT&&move_type!=TRACER_MOVE.FROM_RIGHT) {
	switch (alignment) {
		case TRACER_ALIGN.LEFT:
		x = xstart + sin(t * wave_frequency) * wave_amplitude;
		direction=0;
		break;
	
		case TRACER_ALIGN.RIGHT:
		x = xstart - sin(t * wave_frequency) * wave_amplitude;
		direction=180;
		break;
	}
}