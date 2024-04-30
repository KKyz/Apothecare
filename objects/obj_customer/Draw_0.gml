
	
if (!surface_exists(surf_window))
	surf_window = surf_window = surface_create(738, 415);
	
surface_set_target(surf_window);

if (show)
	draw_self();

surface_reset_target();

draw_surface(surf_window, 608, 64);