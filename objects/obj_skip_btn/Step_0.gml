if (position_meeting(mouse_x, mouse_y, id) and mouse_check_button_pressed(mb_left))
{
	instance_create_depth(0, 0, -9999, obj_fade);
	room_goto(rm_title);
}

image_alpha = position_meeting(mouse_x, mouse_y, id) ? 1 : 0.5;