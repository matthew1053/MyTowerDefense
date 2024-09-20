show_debug_message("Hello, GameMaker!");

if(spawn_count < spawn_amount)
{
	instance_create_layer(x, y, "Path_1", obj_enemy_basic);

	spawn_count++;

	// spawn_rate = 1 * room_speed;
	
	show_debug_message("Hello, GameMaker!");


	alarm[0] = spawn_rate;
}