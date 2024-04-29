
//For the wave text
t++;

draw_self();
draw_set_font(fnt_speech);

//How many messages are in the array
message_end = array_length(message);

if (message_end > 0)
{
	//Variables
	var char_width = 30;
	var line_end = 20;
	var line = 0;
	var space = 0;
	var i = 1;
	var delay = 3;
	
	if (cutoff < string_length(message[message_current]))
	{
		if (timer >= delay)
		{
			cutoff++;
			timer = 0;
		}
		else timer++;
	}
	
	
	//Text Position
	tX = x - 280;
	tY = y - 25;
	
	//New Message
	if (position_meeting(mouse_x, mouse_y, id) and mouse_check_button_pressed(mb_left))
	{
		//If we still have more messages go to the next one
		if (message_current < message_end - 1)
		{
			message_current++;
			cutoff = 0;
		}
		
		//If not, we're done
		else
		{
			done = true;
		}
	}
	
	//Draw Text
	while (i <= string_length(message[message_current]) && i <= cutoff)
	{
		//check for modifier
		if (string_char_at(message[message_current], i) == "\\")
		{
			//Not sure why its ++i and not i++ ¯\_(ツ)_/¯
			modifier = real(string_char_at(message[message_current], ++i));
			++i;
		}
		
		//go to next line
		var length = 0;
		while (string_char_at(message[message_current], i) != " " && i <= string_length(message[message_current]))
		{
			i++;
			length++;
		}

		if (space + length > line_end)
		{
			space = 0;
			line += 3;
		}
	
		i -= length;

		switch (modifier)
		{
			case 0: //normal
			{
				draw_set_color(c_black);
				draw_text(tX + (space * char_width), tY + (13 * line), string_char_at(message[message_current], i));
				break;
			}
			
			case 1: //shaky
			{
				draw_set_color(c_black);
				draw_text(tX + (space * char_width) + random_range(-1, 1), tY + (13 * line) + random_range(-1, 1), string_char_at(message[message_current], i));
				break;
			}
			
			case 2: //wave
			{
				var so = t + i;
				var shift = sin(so * pi * freq/game_get_speed(gamespeed_fps)) * amplitude;
				draw_set_color(c_black);
				draw_text(tX + (space * char_width), tY + (13 * line) + shift, string_char_at(message[message_current], i));
				break;
			}
			
			case 3: //gradient
			{
				var col = make_color_hsv((t + i) % 255, 255, 255);
				var col2 = make_color_hsv((t + i + 75) % 255, 255, 255);
				draw_text_ext_transformed_color(tX + (space * char_width), tY + (13 * line), string_char_at(message[message_current], i), 1, 100, 1, 1, 0, col, col, col2, col2, 1);
				break;
			}
			 case 4: //gradient & wavy
			 {
				var so = t + i;
				var shift = sin(so * pi * freq/game_get_speed(gamespeed_fps)) * amplitude;
				var col = make_color_hsv((t + i) % 255, 255, 255);
				var col2 = make_color_hsv((t + i + 75) % 255, 255, 255);
				draw_text_ext_transformed_color(tX + (space * char_width), tY + (13 * line) + shift, string_char_at(message[message_current], i), 1, 100, 1, 1, 0, col, col, col2, col2, 1);
				break;
				
			 }
			
			default:
			{
				draw_set_color(c_white);
				draw_text(tX + (space * char_width), tY + (13 * line) + shift, string_char_at(message[message_current], i));
				break;
			}
		}

		space++;
		i++;
	}
}