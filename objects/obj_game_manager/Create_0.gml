global.carrying = false;
global.cauldron_limit = 3;
global.suspicion = 0;
global.sus_limit = 100;
global.day = 0;
global.time = 1;
global.money = 1000;
global.cauldron = ds_list_create();
global.customers = ds_list_create();

fullscreen = false;
sus_bar_width = 0;
sus_bar_height = 0;

sus_bar_x = 0;
sus_bar_y = 0;

bg_col = layer_background_get_id("Background");
bg_cols = [ #fdff8f, #bcff8f, #8fa2ff];
layer_background_blend(bg_col, bg_cols[global.time]);
transition_speed = 1;

music_pause = true;
audio_pause_all();
music = audio_play_sound(snd_game, 10, false);
music_indicator = spr_sound_off;


function next_customer()
{
	ds_list_clear(global.cauldron);
	
	if (global.time == 2)
	{
		next_day();
	}
	else
	{
		global.time += 1;
		bg_sprite = bg_sprites[global.time];
	}
}

function next_day()
{
	global.day += 1;
	global.time = 0;
	
	for (var i = 0; i < 2; i += 1)
	{
		//global.customers = ds_list_add();
	}
}

next_day();