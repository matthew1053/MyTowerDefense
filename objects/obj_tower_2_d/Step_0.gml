/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 06254263
/// @DnDArgument : "expr" "mouse_x"
/// @DnDArgument : "var" "x"
x = mouse_x;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4911BD96
/// @DnDArgument : "expr" "mouse_y"
/// @DnDArgument : "var" "y"
y = mouse_y;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 7FEBA065
/// @DnDArgument : "expr" "place_meeting(x, y, obj_region) or place_meeting(x, y, obj_tower_parent)"
if(place_meeting(x, y, obj_region) or place_meeting(x, y, obj_tower_parent))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3C60BB3B
	/// @DnDParent : 7FEBA065
	/// @DnDArgument : "expr" "c_red"
	/// @DnDArgument : "var" "col"
	col = c_red;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 0AC43C81
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 584E59CA
	/// @DnDParent : 0AC43C81
	/// @DnDArgument : "expr" "c_white"
	/// @DnDArgument : "var" "col"
	col = c_white;
}