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
			can_restock = false;
			alarm[0] = 60;
			ds_list_add(global.cauldron, my_ingredient);
			audio_play_sound(snd_select, 0, false);
		}
	}
	
	else if (ds_list_size(global.cauldron) >= global.cauldron_limit and clicked and position_meeting(mouse_x, mouse_y, id))
	{
		global.popup_active = true;
	}
}

else if (clicked and position_meeting(mouse_x, mouse_y, id) and clickable and can_restock)
{
	global.money -= price;
	empty = false;
	sprite_index = my_sprite;
	audio_play_sound(snd_select, 0, false);
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

if (empty)
{
	if (can_restock)
		current_tag = restock_tag;
	else
		current_tag = pointer_null;
}

else
	current_tag = my_tag;