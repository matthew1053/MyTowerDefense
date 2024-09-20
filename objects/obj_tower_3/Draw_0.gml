/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 5485102D
draw_self();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6D42F332
/// @DnDArgument : "var" "scr_mouse_over(x, y, sprite_width, sprite_height)"
/// @DnDArgument : "value" "true"
if(scr_mouse_over(x, y, sprite_width, sprite_height) == true)
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 6FEB62ED
	/// @DnDInput : 4
	/// @DnDParent : 6D42F332
	/// @DnDArgument : "function" "draw_circle"
	/// @DnDArgument : "arg" "x"
	/// @DnDArgument : "arg_1" "y"
	/// @DnDArgument : "arg_2" "range"
	/// @DnDArgument : "arg_3" "true"
	draw_circle(x, y, range, true);
}

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 4FA72842
/// @DnDArgument : "var" "en"
/// @DnDArgument : "value" "instance_nearest(x, y, obj_enemy_1)"
var en = instance_nearest(x, y, obj_enemy_basic);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 125F66B3
/// @DnDArgument : "var" "en"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "noone"
if(!(en == noone))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0F1C6ACC
	/// @DnDParent : 125F66B3
	/// @DnDArgument : "var" "point_distance(x, y, en.x, en.y)"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "range"
	if(point_distance(x, y, en.x, en.y) <= range)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0A593A08
		/// @DnDBreak : 1
	
		/// @DnDParent : 0F1C6ACC
		/// @DnDArgument : "var" "shooting"
		/// @DnDArgument : "value" "false"
		if(shooting == false)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 3701A9B6
			/// @DnDParent : 0A593A08
			/// @DnDArgument : "steps" "1"
			alarm_set(0, 1);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3CAE702E
			/// @DnDParent : 0A593A08
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "shooting"
			shooting = true;
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2A30D80C
		/// @DnDParent : 0F1C6ACC
		/// @DnDArgument : "expr" "en"
		/// @DnDArgument : "var" "objectToShoot"
		objectToShoot = en;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6345945D
		/// @DnDParent : 0F1C6ACC
		/// @DnDArgument : "var" "scr_mouse_over(x, y, sprite_width, sprite_height)"
		/// @DnDArgument : "value" "true"
		if(scr_mouse_over(x, y, sprite_width, sprite_height) == true)
		{
			/// @DnDAction : YoYo Games.Drawing.Draw_Line
			/// @DnDVersion : 1
			/// @DnDHash : 060FE3B2
			/// @DnDParent : 6345945D
			/// @DnDArgument : "x1" "x"
			/// @DnDArgument : "y1" "y"
			/// @DnDArgument : "x2" "en.x"
			/// @DnDArgument : "y2" "en.y"
			draw_line(x, y, en.x, en.y);
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 431C199E
	/// @DnDParent : 125F66B3
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3C81ED01
		/// @DnDParent : 431C199E
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "shooting"
		shooting = false;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6890B3C2
		/// @DnDParent : 431C199E
		/// @DnDArgument : "expr" "noone"
		/// @DnDArgument : "var" "objectToShoot"
		objectToShoot = noone;
	}
}