draw_self();

//instance_destroy(obj_upgrade_button);
//instance_destroy(obj_upgrade_exit);
//global.selected_tower = noone;

var top_right_x = x + sprite_width/2 - 20;  // sprite width 128
var top_right_y = y - sprite_height/2 + 20; // sprite height 128

	
instance_create_layer(floor(top_right_x), floor(top_right_y), "End_Wave_Buttons", obj_end_wave_exit);


var left_align_x = x - sprite_width/2 + 30;
var previous_font = draw_get_font();

draw_set_color(c_black);
draw_set_font(fnt_end_wave);

// Get the text you want to display
var text = "Wave Finished!";

// Get the width and height of the text
var text_width = string_width(text);
var text_height = string_height(text);

// Get the sprite dimensions
var sprite_w = sprite_get_width(sprite_index);
var sprite_h = sprite_get_height(sprite_index);

// Get the origin of the sprite
var origin_x = sprite_get_xoffset(sprite_index);
var origin_y = sprite_get_yoffset(sprite_index);

// Calculate the center of the object
var obj_center_x = x - origin_x + (sprite_w / 2);
var obj_center_y = y - origin_y + (sprite_h / 2);

// Draw the text centered in the object



draw_text(obj_center_x - (text_width / 2), obj_center_y - (text_height / 2), text);

// Draw the text at the specified position
//draw_text(floor(left_align_x), floor(y-25), "Damage: " + string(global.selected_tower.damage));
//draw_text(floor(left_align_x+5), floor(y-25+15), "(10 coins)");
//show_debug_message("Draw damage y: " + string(floor(y-25)));

draw_set_color(c_white);
draw_set_font(previous_font);