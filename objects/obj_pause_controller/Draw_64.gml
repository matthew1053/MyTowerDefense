// Draw GUI event
if (global.is_paused) {
    //draw_set_font(font_pause);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
	draw_set_colour(c_black);
	draw_set_alpha(1);
    draw_text(room_width / 2, room_height / 2, "Game Paused");
} else {
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_colour(c_white);
	draw_set_alpha(1);
}