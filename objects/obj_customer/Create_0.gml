enum ORDER
{
	//Normal
	DIGESTION, 
	ANTINFLAMMATION,
	SLEEP,
	LUCK,
	
	//+Sallow
	INDIGESTION,
	INFLAMMATION,
	AWAKE,
	UNLUCK,
	
	//+Hollowberry
	L_DIGESTION,
	L_ANTINFLAMMATION,
	L_SLEEP,
	L_LUCK,
	
	//+Sallow + Hollowberry
	L_INDIGESTION,
	L_INFLAMMATION,
	L_AWAKE,
	L_UNLUCK
}

all_orders = 
[
	ORDER.DIGESTION,
	ORDER.ANTINFLAMMATION,
	ORDER.SLEEP,
	ORDER.LUCK,
	ORDER.INDIGESTION,
	ORDER.INFLAMMATION,
	ORDER.AWAKE,
	ORDER.UNLUCK,
	
	ORDER.L_DIGESTION,
	ORDER.L_ANTINFLAMMATION,
	ORDER.L_SLEEP,
	ORDER.L_LUCK,
	
	ORDER.L_INDIGESTION,
	ORDER.L_INFLAMMATION,
	ORDER.L_AWAKE,
	ORDER.L_UNLUCK

];
randomize();
image_alpha = 0;
target_x = 576;
move_speed = 0.1;
recieved_order = false;

possible_sprites = [spr_character1, spr_character2, spr_character3];
my_sprite = possible_sprites[random_range(0,3)];

show = false;
my_order =  ds_list_create();
desire = "filler";
surf_window = -1;

speech = instance_create_depth(987, 408, depth - 100, obj_speech);
//surf_window = surface_create(738, 415);

names = ["Amerstal", "Zarek", "Onas", "Blissia", "Rammir", "Merlara", "Eiki", ""]
my_quip = string("\\0 Hi! my name is " + names[random(array_length(names) - 1)]);

my_order_text = "I want something ";

for (var i = 0; i < 2; i += 1) {
    var _order = all_orders[random(array_length(all_orders) - 1)];
    ds_list_add(my_order, _order);
    
    switch (_order)
    {
        case ORDER.DIGESTION:
            desire = "to fix my digestion";
        break;

        case ORDER.ANTINFLAMMATION:
            desire = "to fix my antiflammation";
        break;

        case ORDER.SLEEP:
            desire = "to make me doze off";
        break;

        case ORDER.LUCK:
            desire = "to make me lucky";
        break;

        case ORDER.INDIGESTION:
            desire = "to give me a tummy ache to skip church";
        break;

        case ORDER.INFLAMMATION:
            desire = "to make my bully have itches everywhere";
        break;

        case ORDER.AWAKE:
            desire = "to keep them awake at night";
        break;

        case ORDER.UNLUCK:
            desire = "to decrease my neighbor's lucky streak";
        break;

        case ORDER.L_DIGESTION:
            desire = "to end all indigestion";
        break;

        case ORDER.L_ANTINFLAMMATION:
            desire = "to end all inflammation";
        break;

        case ORDER.L_SLEEP:
            desire = "to grant me eternal sleep";
        break;

        case ORDER.L_LUCK:
            desire = "to make me the luckiest guy in town";
        break;

        case ORDER.L_INDIGESTION:
            desire = "to give my enemy diarrhea";
        break;

        case ORDER.L_INFLAMMATION:
            desire = "to give them extreme itchiness";
        break;

        case ORDER.L_AWAKE:
            desire = "to make me never sleep again";
        break;

        case ORDER.L_UNLUCK:
            desire = "to make sure they are always unlucky";
        break;
    }

}    

speech.message[0] = my_quip;
speech.message[1] = my_order_text;
speech.message[2] = desire;