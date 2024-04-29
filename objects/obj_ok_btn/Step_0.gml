image_alpha = position_meeting(mouse_x, mouse_y, id) ? 1 : 0.5;
depth = -2;

x = obj_full_popup.x;

if (position_meeting(mouse_x, mouse_y, id) and mouse_check_button_pressed(mb_left))
{
	global.popup_active = false;
}