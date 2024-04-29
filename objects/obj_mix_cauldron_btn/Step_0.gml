if (position_meeting(mouse_x, mouse_y, id) and mouse_check_button_pressed(mb_left))
{
	global.popup_active = false;
	ds_list_clear(global.cauldron);
	with (inst_1B915CE2)
	{
		alarm[0] = 10;
	}
	/*with(obj_game_manager)
	{
		global.popup_active = false;
		next_customer();
	}*/
}

image_alpha = ds_list_size(global.cauldron) == 0 ? 0.5 : 1;
image_blend = position_meeting(mouse_x, mouse_y, id) ? c_black : c_white;
x = lerp(x, 78, 0.9);
