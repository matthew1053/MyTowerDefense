draw_self();

var previous_font = draw_get_font();


// Get the width and height of the text
var text = "Destroy";
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
draw_set_font(fnt_upgrade_tower_destroy);

draw_text(obj_top_left_x+8, obj_top_y+8, text);

draw_set_color(c_white);
draw_set_font(previous_font);