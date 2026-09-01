if (fade_out) {
	if (fade_alpha<=1) fade_alpha+=0.01;
	else {
		if (line_index < array_length(line_alpha)) {
			line_alpha[line_index] +=0.01;
	
			if (line_alpha[line_index] >= 1) {
				line_alpha[line_index] = 1;
				line_index++;
			}
		}
	}
}