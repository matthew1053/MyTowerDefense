/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 6747900F
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 39E5CC86
/// @DnDArgument : "color" "$FF000000"
draw_set_colour($FF000000 & $ffffff);
var l39E5CC86_0=($FF000000 >> 24);
draw_set_alpha(l39E5CC86_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 52253445
/// @DnDArgument : "x" "x-15"
/// @DnDArgument : "y" "y-35"
/// @DnDArgument : "caption" """"
/// @DnDArgument : "var" "string(cost)"
draw_text(x-15, y-35, string("") + string(string(cost)));

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 3E1BEF7E
draw_set_colour($FFFFFFFF & $ffffff);
var l3E1BEF7E_0=($FFFFFFFF >> 24);
draw_set_alpha(l3E1BEF7E_0 / $ff);