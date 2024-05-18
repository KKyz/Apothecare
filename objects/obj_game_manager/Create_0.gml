global.cauldron_limit = 3;
global.suspicion = 0;
global.sus_limit = 100;
global.day = 0;
global.time = 2;
global.money = 1000;
global.popup_active = false;
global.book_active = false;
global.cauldron = ds_list_create();
global.customers = ds_list_create();
global.current_customer = pointer_null;
global.new_customer = false;

fullscreen = false;
sus_bar_width = 0;
sus_bar_height = 0;

sus_bar_x = 1322;
sus_bar_y = 105;

bg = layer_background_get_id("Background");
bg_cols = [ #ebe702, #bcff8f, #8fa2ff];
bg_fade = 0;
bg_current = bg_cols[global.time];
bg_prev = bg_cols[global.time];
layer_background_blend(bg, merge_color(bg_prev, bg_current, bg_fade));
transition_speed = .01;

audio_pause_all();
music_pause = false;
music = audio_play_sound(snd_game, 10, true);
music_indicator = spr_sound_on;


function next_customer()
{
	//Used to spawn a new text arrow when character changes
	global.new_customer = true;
		
	bg_fade = 0;
	
	if (global.time >= 2)
	{
		global.day += 1;
		global.time = 0;
	
		for (var i = 0; i < 3; i += 1)
		{
			var _new_customer = instance_create_layer(128, 0, "Characters", obj_customer);
			_new_customer.show = false;
			_new_customer.depth = 10;
			ds_list_add(global.customers, _new_customer);
		}
	}
	else
	{
		global.time++;
	}

	if (ds_list_find_value(global.customers, 0) != pointer_null)
	{
		//instance_destroy(global.customers[0]);
		ds_list_delete(global.customers, 0);
	}
		
	//show_debug_message(global.customers[0].my_quip);
	global.current_customer = ds_list_find_value(global.customers, 0);
	
	with (ds_list_find_value(global.customers, 0))
		show = true;
}

next_customer();