// Inherit the parent event
event_inherited();
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