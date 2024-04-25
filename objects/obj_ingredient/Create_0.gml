return_speed = 0.1;
held = false;
empty = false;
my_sprite = sprite_index;
my_tag = spr_bere_tag;


dx = 0;
dy = 0;
mouse_xprev = mouse_x;
mouse_yprev = mouse_y;

//Values will be changed by children
magical = false;
my_ingredient = TEAS.BERGAMOT;
price = 100;

enum TEAS
{
	BERGAMOT,
	CHAMOMILLE,
	PEPPERMINT
}

enum MAGICAL
{
	HOLLOW_BERRY,
	NIGHT_BLOOM,
	MAGIC7
}