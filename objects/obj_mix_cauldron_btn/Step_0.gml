if (position_meeting(mouse_x, mouse_y, id) and mouse_check_button_pressed(mb_left))
{
	with(obj_game_manager)
	{
		next_customer();
	}
}

image_alpha = ds_list_size(global.cauldron) == 0 ? 0.5 : 1;
image_blend = position_meeting(mouse_x, mouse_y, id) ? c_black : c_white;
x = lerp(x, 78, 0.9);