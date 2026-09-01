x-=x_speed;
y=90;

if (x<=-string_width(selected_message)) {
    current_message = (current_message+1)  % ds_list_size(messages);
    selected_message = messages[| current_message];
	x=room_width;
}