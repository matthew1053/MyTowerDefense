
if obj_spawn.spawn_count == 0 {
	obj_spawn.start_spawn = true;
}

sprite_index = spr_start_button;

if hover {
	image_index = 1;
} else {
	image_index = 0;
}

instance_destroy(obj_end_wave);
instance_destroy(obj_end_wave_exit);