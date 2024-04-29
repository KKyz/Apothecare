clicked = mouse_check_button_pressed(mb_left);

if (not empty and clickable)
{
	var can_fit = ds_list_size(global.cauldron) < global.cauldron_limit;
	
	if (can_fit)
	{
		if (clicked and position_meeting(mouse_x, mouse_y, id))
		{
			to_target = true;
			empty = true;
			alarm[0] = 60;
			ds_list_add(global.cauldron, my_ingredient);
		}
	}
	
	else if (ds_list_size(global.cauldron) >= 3 and clicked and position_meeting(mouse_x, mouse_y, id))
	{
		global.popup_active = true;
	}
}

else if (clicked and position_meeting(mouse_x, mouse_y, id) and clickable)
{
	global.money -= price;
	empty = false;
	sprite_index = my_sprite;
}

if (to_target)
{
	x = lerp(x, target_x, move_speed);
	y = lerp(y, target_y, move_speed);
}
else
{
	x = lerp(x, xstart, move_speed);
	y = lerp(y, ystart, move_speed);
}

current_tag = empty ? restock_tag : my_tag;