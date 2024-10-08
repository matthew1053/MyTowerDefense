if(col == c_white && !placed)
{
	//obj_tower_basic_c.dragging = false;
	global.dragging = false;
	placed = true;
	
	// This code is switching the object to Instances layer so tower will drag over already placed tower
	var new_layer = layer_get_id("Instances");
	layer_add_instance(new_layer, id)
}
else if (!global.dragging) {
	// close previously selected tower upgrade
	if global.upgrading {
		//global.upgrade_exit = true;
		//global.upgrading = false;
		//global.selected_tower = noone;
		//instance_destroy(obj_upgrade_exit);
		//instance_destroy(obj_tower_upgrade);
		//instance_destroy(obj_upgrade_button);	
		scr_close_update_window();
	}
	var room_left = 0;
	var room_right = room_width;
	var room_top = 0;
	var room_bottom = room_height;
	

	
	var tower_upgrade_y = y-sprite_get_height(spr_upgrade_tower) * 2/3;
	var tower_upgrade_x = x;
	var tower_upgrade_top = tower_upgrade_y - sprite_get_height(spr_upgrade_tower);
	var tower_upgrade_width = sprite_get_width(spr_upgrade_tower);
	
	// if the upgrade window is going to go off the top of the screen
	if (tower_upgrade_y + tower_upgrade_top < room_top) {
		tower_upgrade_y = y + sprite_get_height(spr_upgrade_tower) * 2/3;
	}
	
	// if the upgrade window is going to go off the left of the screen
	if (tower_upgrade_x - tower_upgrade_width / 2 < room_left) {
		tower_upgrade_x = 0 + tower_upgrade_width / 2;
	}
	
	var upgrade = instance_create_layer(tower_upgrade_x, tower_upgrade_y, "Upgrade", obj_tower_upgrade);
	global.selected_tower = id;
	
	var top_right_x = upgrade.x + obj_tower_upgrade.sprite_width/2 - 15;  // sprite width 128
	var top_right_y = upgrade.y - obj_tower_upgrade.sprite_height/2 + 15; // sprite height 128
	var left_align_x = upgrade.x - obj_tower_upgrade.sprite_width/2 + 15;
	var left_align_y = upgrade.y - 18;
	
	instance_create_layer(floor(top_right_x), floor(top_right_y), "Upgrade_Buttons", obj_upgrade_exit);
	instance_create_layer(floor(left_align_x), floor(left_align_y), "Upgrade_Buttons", obj_upgrade_button);
	
	
	global.upgrading = true;
}