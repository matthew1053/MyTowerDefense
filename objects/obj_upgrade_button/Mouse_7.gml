
if (global.coins >= 10 ) {
	global.selected_tower.damage += 10;
	global.coins -= 10;
}

sprite_index = spr_upgrade_button;

if hover {
	image_index = 1;
} else {
	image_index = 0;
}

