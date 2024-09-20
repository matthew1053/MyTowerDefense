if(col == c_white)
{
	instance_destroy();

	instance_create_layer(mouse_x, mouse_y, "Instances", obj_tower_1);
}