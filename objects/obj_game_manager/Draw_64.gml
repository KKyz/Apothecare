draw_set_font(fnt_text);
draw_text_color(1100, 0, "Day: " + string(global.day), c_lime, c_lime, c_green,  c_green, 1);
draw_text(100, 200, "bg_cols: " + string(global.time));
draw_text(1220, 0, "$" + string(global.money));
draw_sprite(music_indicator, 0, 10, 0);
//draw_sprite(spr_sus_bg, 0 , sus_bar_x, sus_bar_y);
draw_sprite_stretched(spr_sus_bar, 0, sus_bar_x, sus_bar_y, min((global.suspicion/global.sus_limit) * sus_bar_width, sus_bar_width), sus_bar_height);
//draw_sprite(spr_sus_border, 0 , sus_bar_x, sus_bar_y);