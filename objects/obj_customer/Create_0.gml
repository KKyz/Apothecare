target_x = 576;
move_speed = 0.1;
recieved_order = false;
show = true;
desire_1 = ORDER.STRONG;
desire_2 = ORDER.HAPPY;

quips = [];
my_quip = "";
orders = [];
my_order = "";
speech = pointer_null;

speech = instance_create_depth(987, 408, depth - 100, obj_speech);
surf_window = surface_create(738, 415);

with (speech)
{
	//message[0] = my_quip;
	//message[1] = my_order;
}

enum ORDER
{
	//Main Categories
	STRONG,
	HAPPY,
	INTIMATE,
	BLISSFUL,
	CONTENT,
	
	//Small Categories
	S_STRONG,
	S_HAPPY,
	S_INTIMATE,
	S_BLISSFUL,
	S_CONTENT
}

