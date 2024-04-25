global.drawer_open = position_meeting(mouse_x, mouse_y, id) and mouse_check_button_pressed(mb_left) ? !open : open;
sprite_index = global.drawer_open ? spr_drawer_open : spr_drawer_closed;


