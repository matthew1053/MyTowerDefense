
var upgrade_complete = false;
if global.selected_tower.tower_level == 1 {
	if global.coins >= global.selected_tower.level_2_upgrade_cost {
		global.selected_tower.damage = global.selected_tower.level_2_upgrade_dmg;
		global.coins -= global.selected_tower.level_2_upgrade_cost;
		upgrade_complete = true;
	}
}

if global.selected_tower.tower_level == 2 {
	if global.coins >= global.selected_tower.level_3_upgrade_cost {
		global.selected_tower.damage = global.selected_tower.level_3_upgrade_dmg;
		global.coins -= global.selected_tower.level_3_upgrade_cost;
		upgrade_complete = true;
	}
}

if upgrade_complete {
	global.selected_tower.tower_level++;
}


sprite_index = spr_upgrade_button;

if hover {
	image_index = 1;
} else {
	image_index = 0;
}

