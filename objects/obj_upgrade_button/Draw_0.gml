draw_self();

var left_align_x = x - sprite_width/2 + 4;
var left_align_y = y - sprite_height/2;
var previous_font = draw_get_font();

// Set horizontal alignment to left
//draw_set_halign(fa_left);
draw_set_font(fnt_upgrade_tower);
draw_set_color(c_black);
// Draw the text at the specified position
//draw_text(floor(left_align_x), floor(y-10), "Upgrade\n10 coins");
draw_text(floor(left_align_x), floor(left_align_y), "+")

draw_set_color(c_white);
draw_set_font(previous_font);