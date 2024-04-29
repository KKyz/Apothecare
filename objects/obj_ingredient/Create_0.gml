move_speed = 0.1;
held = false;
empty = false;
my_sprite = sprite_index;
my_tag = spr_bere_tag;
restock_tag = spr_restock_tag;
current_tag = my_tag;
anim_count = 0;
clickable = true;
to_target = false;


target_x = 183;
target_y = 315;

//Values will be changed by children
magical = false;
my_ingredient = TEAS.BERE;
price = 100;

enum TEAS
{
	BERE,
	CHRYS,
	VALERIAN
}

enum MAGICAL
{
	HOLLOW,
	NIGHT,
	SWAMP
}