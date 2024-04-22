if (place_meeting(mouse_x, mouse_y, id))
{
	instance_create_depth(0, 0, -9999, obj_fade);
	room_goto(rm_game);
}