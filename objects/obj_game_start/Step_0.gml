if (position_meeting(mouse_x, mouse_y, id) and mouse_check_button_pressed(mb_left))
{
	instance_create_depth(0, 0, -9999, obj_fade);
	room_goto(rm_game);
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

image_alpha = position_meeting(mouse_x, mouse_y, id) ? 1 : 0.5;