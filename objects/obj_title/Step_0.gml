x = room_width/2;
y = lerp(y, 300, 0.1);

if (abs(y - 300) < 100 and not scale_back)
{
	image_yscale = lerp(image_yscale, 0.2, 0.1);
}

if (image_yscale <= 0.215 and not scale_back and alarm[0] == -1)
{
	alarm[0] = 2;
}

if (scale_back)
{
	image_yscale = lerp(image_yscale, 1, 0.2);
}
