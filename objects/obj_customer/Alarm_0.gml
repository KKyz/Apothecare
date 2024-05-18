/// @description turn off and on again
if (show)
	{
		show = false;
		instance_destroy(speech);
		alarm[0] = 60;
	}
else
	{
		show = true;
		speech = instance_create_depth(987, 408, depth - 100, obj_speech);
	}
