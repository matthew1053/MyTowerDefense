draw_self();

var previous_font = draw_get_font();

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_color(c_black);
draw_set_font(fnt_start_button);


draw_text(floor(x), floor(y), "Start Wave");

draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_set_color(c_white);

draw_set_font(previous_font);