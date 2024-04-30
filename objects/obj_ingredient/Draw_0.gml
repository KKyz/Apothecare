if ((global.drawer_open and magical) or not magical or abs(x - xstart) > 1)
	draw_self();
	
	

if (position_meeting(mouse_x, mouse_y, id) and not held and point_distance(x, y, xstart, ystart) < 2)
{
	if (!btn_on)
	{
		btn_on = true;
		btn_frame = sprite_get_number(current_tag) - 1;
	}
	
	else
	{
		if (btn_frame >= 0)
		{
			btn_frame -= btn_spd;
		}
	}
}

else
{
	if (btn_frame < sprite_get_number(current_tag) - 1)
	{
		btn_frame += btn_spd;
	}
	
	else
	{
		btn_on = false;
	}
}

if (btn_on)
{
	draw_sprite(current_tag, btn_frame, x, y);
}