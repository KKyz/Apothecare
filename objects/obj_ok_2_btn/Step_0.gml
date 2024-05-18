image_alpha = position_meeting(mouse_x, mouse_y, id) ? 1 : 0.5;
depth = -4;

x = obj_notebook.x - 260;

if (position_meeting(mouse_x, mouse_y, id) and mouse_check_button_pressed(mb_left))
{
	global.book_active = false;
}