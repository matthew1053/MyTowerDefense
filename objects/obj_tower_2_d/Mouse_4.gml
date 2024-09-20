/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1978911E
/// @DnDArgument : "var" "col"
/// @DnDArgument : "value" "c_white"
if(col == c_white)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 187A2D55
	/// @DnDParent : 1978911E
	instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 31B38A20
	/// @DnDParent : 1978911E
	/// @DnDArgument : "xpos" "mouse_x"
	/// @DnDArgument : "ypos" "mouse_y"
	/// @DnDArgument : "objectid" "obj_tower_2"
	/// @DnDSaveInfo : "objectid" "obj_tower_2"
	instance_create_layer(mouse_x, mouse_y, "Instances", obj_tower_2);
}