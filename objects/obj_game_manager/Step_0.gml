if (keyboard_check_pressed(vk_f2))
{
	room_restart();
}

if (keyboard_check_pressed(ord("A")))
{
	increment_time();
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
		obj_mix_btn = instance_create_depth(-10, 573, -1, obj_mix_cauldron_btn);
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
bg_current = bg_cols[global.time];

bg_prev = global.time == 0 ?  bg_cols[2] :  bg_cols[clamp(global.time - 1, 0, 2)];

if layer_background_get_blend(bg) != bg_current
	bg_fade += transition_speed;

bg_fade = clamp(bg_fade, 0, 1);

layer_background_blend(bg, merge_color(bg_prev, bg_current, bg_fade));
