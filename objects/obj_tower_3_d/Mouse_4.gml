/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1B2F4D5C
/// @DnDArgument : "var" "col"
/// @DnDArgument : "value" "c_white"
if(col == c_white)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 586064DB
	/// @DnDParent : 1B2F4D5C
	instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6C9B62D3
	/// @DnDParent : 1B2F4D5C
	/// @DnDArgument : "xpos" "mouse_x"
	/// @DnDArgument : "ypos" "mouse_y"
	/// @DnDArgument : "objectid" "obj_tower_3"
	/// @DnDSaveInfo : "objectid" "obj_tower_3"
	instance_create_layer(mouse_x, mouse_y, "Instances", obj_tower_3);
}