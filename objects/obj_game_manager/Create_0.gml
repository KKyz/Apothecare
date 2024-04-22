global.carrying = false;
global.cauldron_limit = 3;
global.suspicion = 0;
global.sus_limit = 100;
global.day = 0;
global.money = 1000;
global.cauldron = ds_list_create();
global.customers = ds_list_create();

music_pause = true;
fullscreen = false;

sus_bar_width = 0;
sus_bar_height = 0;

sus_bar_x = 0;
sus_bar_y = 0;


bg_cols = [ #bcff8f, #bcff8f, #8fa2ff];
time = 2;
layer_background_blend(layer_background_get_id("Background"), bg_cols[time]);
transition_speed = 1;

audio_pause_all();
music = audio_play_sound(snd_music, 10, false);
music_indicator = spr_sound_off;

function transition_bg()
{
	while (layer_background_get_blend(layer_background_get_id("Background")) != bg_cols[time + 1])
	{
		lerp(bg_cols[time], bg_cols[time + 1], transition_speed);
	}
}
function next_customer()
{
	ds_list_clear(global.cauldron);
	layer_background_blend(layer_background_get_id("Background"), bg_cols[time]);
	time += 1;
}

function next_day()
{
	global.day += 1;
	time = 0;
	
	for (var i = 0; i < 2; i += 1)
	{
		//global.customers = ds_list_add();
	}
}

next_day();