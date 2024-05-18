if (position_meeting(mouse_x, mouse_y, id) and mouse_check_button_pressed(mb_left))
{
	global.popup_active = false;
	global.book_active = false;
	obj_ingredient.can_restock = true;
	ds_list_clear(global.cauldron);
	obj_game_manager.next_customer();
	
	with (global.current_customer)
	{
		alarm[0] = 10;
	}
	
	with (obj_speech)
	{
		message_current = 0;
	}
	
	if (global.cauldron == global.current_customer.my_order)
	{
		global.suspicion += 20;
		global.money += 200;
	}
	
	else
	{
		global.suspicion -= 20;
		global.money += 50;	
	}
}

image_alpha = ds_list_size(global.cauldron) == 0 ? 0.5 : 1;
image_blend = position_meeting(mouse_x, mouse_y, id) ? c_black : c_white;
x = lerp(x, 78, 0.9);
