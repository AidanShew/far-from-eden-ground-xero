if (new_message) {
	ds_list_add(battle_messages, battle_message);
	text_time=default_text_time;
	new_message=false;
}



if (text_time<=0) {
	if (ds_list_size(battle_messages) > 5) { ds_list_delete(battle_messages, 0); }
}
else {
	text_time--;
}