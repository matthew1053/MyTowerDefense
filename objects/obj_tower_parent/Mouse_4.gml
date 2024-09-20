if(col == c_white && !placed)
{
	//obj_tower_basic_c.dragging = false;
	global.dragging = false;
	placed = true;
	
	// This code is switching the object to Instances layer so tower will drag over already placed tower
	var new_layer = layer_get_id("Instances");
	layer_add_instance(new_layer, id)
}
else if (!global.upgrading) {
	
	var upgrade = instance_create_layer(x, y-85, "Upgrade", obj_tower_upgrade);
	global.selected_tower = id;
	
	var top_right_x = upgrade.x + obj_tower_upgrade.sprite_width/2 - 15;  // sprite width 128
	var top_right_y = upgrade.y - obj_tower_upgrade.sprite_height/2 + 15; // sprite height 128

	instance_create_layer(top_right_x, top_right_y, "Upgrade_Buttons", obj_upgrade_exit);
	instance_create_layer(upgrade.x, upgrade.y + 25, "Upgrade_Buttons", obj_upgrade_button);
	
	
	global.upgrading = true;
}