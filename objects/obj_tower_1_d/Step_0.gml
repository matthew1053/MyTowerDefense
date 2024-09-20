x = mouse_x;
y = mouse_y;

if(place_meeting(x, y, obj_region) or place_meeting(x, y, obj_tower_parent))
{
	col = c_red;
}

else
{
	col = c_white;
}