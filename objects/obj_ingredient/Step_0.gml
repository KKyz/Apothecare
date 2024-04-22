clicked = mouse_check_button_pressed(mb_left);

if (not empty)
{
	if (clicked and position_meeting(mouse_x, mouse_y, id))
	{
		held = true;
		dx = (mouse_x - x);
		dy = (mouse_y - y);
	}

	//held prevents from bottles being carried if they weren't explicitly clicked on first
	//Simplifying this if statement causes game to glitch for some reason
	if (mouse_check_button_released(mb_left))
	{
		held = false;
	}

	if (held)
	{
		x = mouse_x - dx;
		y = mouse_y - dy;

		mouse_xprev = mouse_x;
		mouse_yprev = mouse_y;
		global.carrying = true;
	}
	else
	{
		var can_fit = ds_list_size(global.cauldron) < global.cauldron_limit;
		
		if (place_meeting(x, y, obj_cauldron) and can_fit)
		{
			ds_list_add(global.cauldron, my_tea);
			x = xstart;
			y = ystart;
			empty = true;
			sprite_index = spr_empty_bottle;
		}
		else
		{
			global.carrying = false;
			x = lerp(x, xstart, return_speed);
			y = lerp(y, ystart, return_speed);
		
			if (not can_fit)
			{
				//Create dialogue box saying your cauldron is full
			}
		}
	}
}

else if (clicked and position_meeting(mouse_x, mouse_y, id))
{
	global.money -= price;
	empty = false;
	sprite_index = my_sprite;
}