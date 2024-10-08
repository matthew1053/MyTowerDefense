if(global.coins >= cost and !global.dragging)
{
	instance_create_layer(mouse_x, mouse_y, "Dragging", obj_tower_basic);
	
	global.coins += -cost;
	global.dragging = true;
}