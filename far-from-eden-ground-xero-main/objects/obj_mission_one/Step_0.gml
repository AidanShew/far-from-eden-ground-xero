switch (section) {
	case SECTION.ONE:
	section_one();
	break;
	
	case SECTION.TWO:
	section_two();
	break;
	
	case SECTION.THREE:
	section_three();
	break;
	
	case SECTION.FOUR:
	create_double_spiral();
	break;
	
	case SECTION.FIVE:
	create_cross();
	break;
	
	case SECTION.SIX:
	create_circuit();
	break;
	
	case SECTION.SEVEN:
	tracer_section();
	show_debug_message("Spawn Timer: "+string(spawn_timer));
	break;
	
	case SECTION.EIGHT:
	treclops_create();
	break;
}