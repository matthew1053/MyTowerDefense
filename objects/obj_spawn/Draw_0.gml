var room_left = 0;
var room_right = room_width;
var room_top = 0;
var room_bottom = room_height;


draw_set_colour(c_black & $ffffff);draw_set_alpha(1);

draw_text(room_right-150, 230, string("Coins: ") + string(global.coins));
draw_text(room_right-150, 250, string("Level: ") + string(global.level));
draw_text(room_right-150, 270, string("Kill Count: ") + string(kill_count));
draw_text(room_right-150, 290, string("Spawn Total: ") + string(spawn_amount));
draw_text(room_right-150, 310, string("Spawn Count: ") + string(spawn_count));
draw_text(room_right-150, 330, string("Speed: ") + string(global.spd));
draw_text(room_right-150, 350, string("HP: ") + string(global.hp));

draw_set_colour(c_white & $ffffff);draw_set_alpha(1);