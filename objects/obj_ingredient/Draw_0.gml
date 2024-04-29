if ((global.drawer_open and magical) or not magical or abs(x - xstart) > 1)
	draw_self();
	
	

if (position_meeting(mouse_x, mouse_y, id) and not held and point_distance(x, y, xstart, ystart) < 2)
{
	draw_sprite(current_tag, 0, x, y);
}
