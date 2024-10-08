// Start spawning once the start button has been pressed
// and if the spawn amount is more than the spawn count
if start_spawn && spawn_amount > spawn_count {
	spawning = true;
	if cooldown <= 0 {
		instance_create_layer(x, y, "Path_1", obj_enemy_basic);
		spawn_count++;
		cooldown = spawn_rate;
	} else {
		cooldown--;
	}
} else {
	// Set spawn to false after making sure that the spawn is still true
	//if spawn_count == 0 {
	//	spawn_amount = spawn_amount * 1.5;
	//	global.hp += 10;
	//	global.level += 1;
	//}
	spawning = false;
	//if start_spawn && spawn_amount == 0 {
	start_spawn = false;
	
	//spawn_count = 0;
		//spawn_amount = spawn_amount * 1.5;
		//global.hp += 10;
		//global.level += 1;
	//}
}

if wave_kills == spawn_amount{
	var room_left = 0;
	var room_right = 640;
	var room_top = 0;
	var room_bottom = room_height;
	
	
	instance_create_layer(room_right/2, room_height/2, "End_Wave", obj_end_wave);
	
	spawn_count = 0;
	wave_kills = 0;
	spawn_amount = ceil(spawn_amount * 1.5);
	global.hp += 10;
	global.level += 1;
}

//show_debug_message("Spawning: " + string(spawning));