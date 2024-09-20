if(instance_number(obj_enemy_basic) <= 0)
{
	spawn_count = 0;

	spawn_amount += 1;

	global.level += 1;

	global.hp += 10;

	global.spd += .1;

	spawn_rate += -1.5;

	alarm_set(0, spawn_rate);
}

alarm_set(1, room_speed * 5);