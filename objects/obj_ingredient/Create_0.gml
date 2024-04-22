return_speed = 0.1;
held = false;
empty = false;
my_sprite = sprite_index;


dx = 0;
dy = 0;
mouse_xprev = mouse_x;
mouse_yprev = mouse_y;

//Values will be changed by children
my_tea = TEAS.BERGAMOT;
price = 100;


enum TEAS
{
	BERGAMOT,
	CHAMOMILLE,
	PEPPERMINT

}