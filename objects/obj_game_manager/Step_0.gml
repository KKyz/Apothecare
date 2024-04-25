if (keyboard_check_pressed(vk_f2))
{
	room_restart();
}

if (keyboard_check_pressed(ord("A")))
{
	next_customer();
}

if (keyboard_check_pressed(vk_f1))
{
	music_pause = !music_pause;
	music_indicator = music_pause == true ? spr_sound_off : spr_sound_on;
}

if (music_pause)
{
	audio_pause_sound(music);
}
else if (audio_is_paused(music))
{
	audio_resume_sound(music);
}

if (ds_list_size(global.cauldron) >= 1)
{
	if (obj_mix_btn == pointer_null)
	{
		obj_mix_btn = instance_create_depth(-10, 573, -5, obj_mix_cauldron_btn);
	}
}

else
{
	instance_destroy(obj_mix_cauldron_btn);
	obj_mix_btn = pointer_null;
}

if (keyboard_check(vk_alt) and keyboard_check(vk_enter))
{
	fullscreen = !fullscreen;
	window_set_fullscreen(fullscreen);
}

//Background Coloring
var _current_bg = bg_cols[global.time];
var _target_bg = bg_cols[global.time + 1];
var _bg_fade = 0;

if (_bg_fade < 1)
{
	_bg_fade += 0.01;
	layer_background_blend(bg_col, merge_color(_current_bg, _target_bg, _bg_fade));
}
