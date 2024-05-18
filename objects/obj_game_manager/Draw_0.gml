draw_set_font(fnt_text);
draw_text_color(1100, 0, "Day: " + string(global.day), c_aqua, c_aqua, c_green,  c_green, 1);

var col = global.money <= 0 ? draw_set_color(c_red) : draw_set_color(c_white);

draw_text(1220, 0, "$" + string(global.money));
draw_text(1300, 285, "sus");
draw_sprite(music_indicator, 0, 10, 0);
cursor_sprite = spr_pointer;
window_set_cursor(cr_none); 

if global.suspicion <= 20 
{
    draw_sprite(spr_sus_bar, 0 , sus_bar_x, sus_bar_y);
}

if global.suspicion <= 40 && global.suspicion > 20
{
    draw_sprite(spr_sus_bar, 1 , sus_bar_x, sus_bar_y);
}

if global.suspicion <= 60 && global.suspicion > 40 
{
    draw_sprite(spr_sus_bar, 2 , sus_bar_x, sus_bar_y);
}

if global.suspicion <= 80 && global.suspicion > 60 
{
    draw_sprite(spr_sus_bar, 3 , sus_bar_x, sus_bar_y);
}

if global.suspicion <= 100 && global.suspicion > 80 
{
    draw_sprite(spr_sus_bar, 4 , sus_bar_x, sus_bar_y);
} 
