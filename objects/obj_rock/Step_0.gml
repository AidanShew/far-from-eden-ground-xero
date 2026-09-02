move_wrap(true,true,100);
image_angle +=1; //This allows the rock to rotate.
var RockCount=0;

with (obj_rock) {
	if (sprite_index==spr_rock_big) {
		RockCount+=1;
	}
}

if (RockCount<12) {
	create_rock(RockCount-12);
}
