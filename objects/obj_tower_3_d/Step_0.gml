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
/// @DnDHash : 6BA4080D
/// @DnDArgument : "expr" "place_meeting(x, y, obj_region) or place_meeting(x, y, obj_tower_parent)"
if(place_meeting(x, y, obj_region) or place_meeting(x, y, obj_tower_parent))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 12913EE4
	/// @DnDParent : 6BA4080D
	/// @DnDArgument : "expr" "c_red"
	/// @DnDArgument : "var" "col"
	col = c_red;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 5A1ECBF7
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1B82C768
	/// @DnDParent : 5A1ECBF7
	/// @DnDArgument : "expr" "c_white"
	/// @DnDArgument : "var" "col"
	col = c_white;
}