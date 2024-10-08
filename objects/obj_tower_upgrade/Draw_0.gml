draw_self();

var left_align_x = x - sprite_width/2 + 30;
var previous_font = draw_get_font();


// Get the width and height of the text
var text = "Level " + string(global.selected_tower.tower_level);
// Get the sprite dimensions
var sprite_w = sprite_get_width(sprite_index);
var sprite_h = sprite_get_height(sprite_index);

// Get the origin of the sprite
var origin_x = sprite_get_xoffset(sprite_index);
var origin_y = sprite_get_yoffset(sprite_index);

// Calculate the top-left corner of the object
var obj_top_left_x = x - origin_x;
var obj_top_y = y - origin_y;  // Align to the top of the object

draw_set_color(c_black);

draw_set_font(fnt_upgrade_tower_title);

draw_text(obj_top_left_x+15, obj_top_y+8, text);

draw_set_font(fnt_upgrade_tower);
// Draw the text at the specified position
draw_text(floor(left_align_x), floor(y-25), "Damage: " + string(global.selected_tower.damage));

var upgrade_cost = global.selected_tower.level_2_upgrade_cost;
if global.selected_tower.tower_level = 2 {
	upgrade_cost = global.selected_tower.level_3_upgrade_cost;
}

if global.selected_tower.tower_level != 3 {
	draw_text(floor(left_align_x-20), floor(y-25+15), "Level " + string(global.selected_tower.tower_level + 1) + " " + string(upgrade_cost) + " coins");
} else {
	draw_text(floor(left_align_x), floor(y-25+15),  "Max Level");
}


draw_set_color(c_white);
draw_set_font(previous_font);

instance_create_layer(floor(x), floor(y + sprite_height/4), "Upgrade_Buttons", obj_destroy_button);