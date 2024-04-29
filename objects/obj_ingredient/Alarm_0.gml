switch (anim_count)
{
	//Rotate Bottle
	case 0:
		image_angle = 180;
		anim_count++;
		alarm[0] = 60;
	break;
	
	//Dump out its contents
	case 1:
		sprite_index = spr_empty_bottle;
		anim_count++;
		alarm[0] = 60;
	break;
	
	//Lerp back to start
	case 2:
		image_angle = 0;
		to_target = false;
		clickable = true;
		anim_count = 0;
	break;
	
}