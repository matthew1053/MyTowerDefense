if(dragging or !placed)
{
	var target = layer_get_id("Dragging");
	id.layer = target;
	draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, col, 1);

	draw_circle(x, y, range, true);
} else {
	var target = layer_get_id("Instances");
	id.layer = target;
	draw_self();
		
	var en = instance_nearest(x, y, obj_enemy_basic);
	
	if(!(en == noone))
	{
		if(point_distance(x, y, en.x, en.y) <= range)
		{
			if(shooting == false)
			{
				shooting = true;
			}
	
			objectToShoot = en;
	
			if(scr_mouse_over(x, y, sprite_width, sprite_height) == true)
			{
				draw_line(x, y, en.x, en.y);
			}
		}

		else
		{
			shooting = false;
			objectToShoot = noone;
		}
	}
	
	if(scr_mouse_over(x, y, sprite_width, sprite_height) == true and !global.dragging)
	{	
		// Setting to Dragging layer because it's above the Instances layer
		var target = layer_get_id("Dragging");
	
		id.layer = target;
		draw_circle(x, y, range, true);
	}

}


