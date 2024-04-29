if not (recieved_order and target_x - x < 1)
{
	x = lerp(x, target_x, move_speed);
}

else if (recieved_order)
{
	//show happy expression
	x = lerp(x, room_width + 5, move_speed);
}
