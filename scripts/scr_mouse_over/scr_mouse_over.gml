/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 0458976C
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDInput : 4
/// @DnDArgument : "funcName" "scr_mouse_over"
/// @DnDArgument : "arg" "xx"
/// @DnDArgument : "arg_1" "yy"
/// @DnDArgument : "arg_2" "width"
/// @DnDArgument : "arg_3" "height"
function scr_mouse_over(xx, yy, width, height) 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 61E83B2E
	/// @DnDParent : 0458976C
	/// @DnDArgument : "expr" "xx - width / 2 "
	/// @DnDArgument : "var" "xx"
	xx = xx - width / 2 ;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4E0BDBF6
	/// @DnDParent : 0458976C
	/// @DnDArgument : "expr" "yy - height / 2"
	/// @DnDArgument : "var" "yy"
	yy = yy - height / 2;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 1B159AED
	/// @DnDParent : 0458976C
	/// @DnDArgument : "expr" "mouse_x  > xx && mouse_x < xx + width"
	if(mouse_x  > xx && mouse_x < xx + width)
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 7E8D539D
		/// @DnDParent : 1B159AED
		/// @DnDArgument : "expr" "mouse_y > yy && mouse_y < yy + height"
		if(mouse_y > yy && mouse_y < yy + height)
		{
			/// @DnDAction : YoYo Games.Common.Return
			/// @DnDVersion : 1
			/// @DnDHash : 6765E4A8
			/// @DnDParent : 7E8D539D
			/// @DnDArgument : "value" "true"
			return true;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 6164F999
		/// @DnDParent : 1B159AED
		else
		{
			/// @DnDAction : YoYo Games.Common.Return
			/// @DnDVersion : 1
			/// @DnDHash : 7709CBB2
			/// @DnDParent : 6164F999
			/// @DnDArgument : "value" "false"
			return false;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 6865ECC0
	/// @DnDParent : 0458976C
	else
	{
		/// @DnDAction : YoYo Games.Common.Return
		/// @DnDVersion : 1
		/// @DnDHash : 39593B0C
		/// @DnDParent : 6865ECC0
		/// @DnDArgument : "value" "false"
		return false;
	}
}