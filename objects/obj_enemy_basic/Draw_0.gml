/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 41A77E4B
draw_self();

/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 1180E0BC
/// @DnDArgument : "x1" "x - 15"
/// @DnDArgument : "y1" "y -15"
/// @DnDArgument : "x2" "x + 15"
/// @DnDArgument : "y2" "y - 10"
/// @DnDArgument : "value" "hp"
/// @DnDArgument : "backcol" "c_black"
/// @DnDArgument : "mincol" "c_red"
/// @DnDArgument : "maxcol" "c_lime"
draw_healthbar(x - 15, y -15, x + 15, y - 10, hp, c_black & $FFFFFF, c_red & $FFFFFF, c_lime & $FFFFFF, 0, ((c_black>>24) != 0), (($FFFFFFFF>>24) != 0));