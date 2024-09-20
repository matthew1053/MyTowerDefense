draw_set_colour(c_black & $ffffff);draw_set_alpha(1);

draw_text(10, 10, string("Coins: ") + string(global.coins));

draw_text(10, 30, string("Level: ") + string(global.level));

draw_text(10, 50, string("Spawn Rate: ") + string(spawn_rate));

draw_text(10, 70, string("Spawn Count: ") + string(spawn_count));

draw_text(10, 90, string("Speed: ") + string(global.spd));

draw_text(10, 110, string("HP: ") + string(global.hp));

draw_set_colour(c_white & $ffffff);draw_set_alpha(1);