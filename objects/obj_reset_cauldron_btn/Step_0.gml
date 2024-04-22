if (position_meeting(mouse_x, mouse_y, id) and mouse_check_button_pressed(mb_left))
{
	ds_list_clear(global.cauldron);
}

image_alpha = ds_list_size(global.cauldron) == 0 ? 0.5 : 1;
image_blend = position_meeting(mouse_x, mouse_y, id) ? c_black : c_white;