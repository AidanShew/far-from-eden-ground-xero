function create_rock(loopAmount){
	for (var i=0; i<loopAmount; i++) {
		var gameMargin=150;
		var rock=instance_create_layer(0,0, "Instances", obj_rock);
		with (rock) {
				var side=irandom(3); //random number from 0 to 3
				switch (side) {
					case 0: //Right Side
					x=room_width+gameMargin;
					y=irandom(room_height);
					break;
	
					case 1: //Left Side
					x=-gameMargin;
					y=irandom(room_height);
					break;
	
					case 2: //Bottom
					x=irandom(room_width);
					y=room_height+gameMargin;
					break;
	
					case 3: //Top
					x=irandom(room_width);
					y=-gameMargin;
					break;
				}
			}
		}
}