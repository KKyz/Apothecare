if ((global.drawer_open and magical) or not magical)
	draw_self();
draw_self();

if (position_meeting(mouse_x, mouse_y, id) and not held and point_distance(x, y, xstart, ystart) < 2)
{
	for (var i = 0; i < sprite_get_number(my_tag); i += 1)
	{
		draw_sprite(my_tag, i, x, y);
	}
}
