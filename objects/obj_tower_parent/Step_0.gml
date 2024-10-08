
if(dragging or !placed) {
	x = mouse_x;
	y = mouse_y;
	if(place_meeting(mouse_x, mouse_y, obj_region) 
		or place_meeting(mouse_x, mouse_y, obj_tower_parent)
		or place_meeting(mouse_x, mouse_y, obj_tower_c_parent))
	{
		col = c_red;
	}

	else
	{
		col = c_white;
	}	
}
else {
	if(instance_exists(objectToShoot) == true)
	{
		if(cooldown <= 0)
		{
			var bullet = instance_create_layer(x, y, "Instances", obj_bullet);
			
			audio_play_sound(snd_tower_shooting, 1, false);
	
			bullet.speed = bullet_speed;
			bullet.damage = damage;
			//show_debug_message("damage sent to bullet: " + string(damage) + " bullet " + string(bullet.damage));
			bullet.direction = point_direction(x, y, objectToShoot.x, objectToShoot.y);
	
			cooldown = fire_rate;
		}

		else
		{
			cooldown -= 1;
		}
	}
	else
	{
		shooting = false;
	}
}

