depth = -1;
if not (recieved_order and target_x - x < 1 and show)
{
	x = lerp(x, target_x, move_speed);
}

else if (recieved_order)
{
	//show happy expression
	x = lerp(x, room_width + 5, move_speed);
}

if (speech = pointer_null)
{
	speech = instance_create_depth(987, 408, depth - 100, obj_speech);
	speech.message[0] = my_quip;
	speech.message[1] = my_order_text;
	speech.message[2] = desire;
}
	