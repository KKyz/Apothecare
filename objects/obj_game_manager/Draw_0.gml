draw_set_font(fnt_text);
draw_text_color(1100, 0, "Day: " + string(global.day), c_aqua, c_aqua, c_green,  c_green, 1);

var col = global.money <= 0 ? draw_set_color(c_red) : draw_set_color(c_white);

draw_text(1220, 0, "$" + string(global.money));
draw_text_color(100, 300, "bg_fade: " + string(bg_fade), c_aqua, c_aqua, c_green,  c_green, 1);
draw_sprite(music_indicator, 0, 10, 0);
//draw_sprite(spr_sus_bg, 0 , sus_bar_x, sus_bar_y);
draw_sprite_stretched(spr_sus_bar, 0, sus_bar_x, sus_bar_y, min((global.suspicion/global.sus_limit) * sus_bar_width, sus_bar_width), sus_bar_height);
//draw_sprite(spr_sus_border, 0 , sus_bar_x, sus_bar_y);
cursor_sprite = spr_pointer;
window_set_cursor(cr_none); 