show_debug_message("Scrolling Text Created");
x_speed=5;

messages=ds_list_create();
message1="Welcome to Oxygen: Hypersonic Combat Beta 2!";
if (global.highest_rank=="No Rank Yet") {
	message2=("Earn your rank in Horde.");
}
else {
	message2=("Highest Rank: "+string(global.highest_rank));
}
if (global.high_score==0) {
	message3=("No score yet.");
}
else {
	message3=("High Score: "+string(global.high_score));
}
message4="Check out the GitHub for more information about the project.";
message5="Made by a real human!";
message6="Made in a cave!";


ds_list_add(messages, message1);
ds_list_add(messages, message2);
ds_list_add(messages, message3);
ds_list_add(messages, message4);

var index = irandom_range(5,6);
if (index==5) { ds_list_add(messages, message5); }
else if (index==6) { ds_list_add(messages, message6); }

current_message=0;
selected_message = messages[| current_message];
x=room_width+50;
y=100;