// Inherit the parent event
event_inherited();
sprite_index=spr_button_selected;
//Stats go away
if (left_press==true) {
	hide_stats=true;
	left_press=false;
	transition=true;
}
//Stats show
else {
	left_press=true;
	hide_stats=false;
	transition=false;
}