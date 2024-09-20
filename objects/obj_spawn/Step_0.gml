// Start spawning once the start button has been pressed
// and if the spawn amount is more than the spawn count
if start_spawn && spawn_amount >= spawn_count {
	if cooldown <= 0 {
		instance_create_layer(x, y, "Path_1", obj_enemy_basic);
		spawn_count++;
		cooldown = spawn_rate;
	} else {
		cooldown--;
	}
} else {
	// Set spawn to false after making sure that the spawn is still true
	if start_spawn {
		start_spawn = false;
	
		spawn_count = 0;
		spawn_amount = spawn_amount * 1.5;
		global.hp += 10;
		global.level += 1;
	}
}