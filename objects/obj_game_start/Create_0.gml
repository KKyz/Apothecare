music_pause = true;
audio_pause_all();
music = audio_play_sound(snd_title, 10, false);
music_indicator = spr_sound_off;

bg = layer_background_get_id("Background");
layer_background_blend(bg,  #bcff8f);