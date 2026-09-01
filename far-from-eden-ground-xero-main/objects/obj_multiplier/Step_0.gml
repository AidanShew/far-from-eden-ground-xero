if (instance_exists(obj_player)) {
	bar_fill=clamp(bar_fill,0,bar_fill);

	bar_fill=(-obj_player.multiplier/25)*250+(bar_max);
}
else {
	bar_fill=bar_max;
}