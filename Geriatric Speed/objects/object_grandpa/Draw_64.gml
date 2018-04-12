/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 108EEE68
draw_set_halign(fa_left);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 3DEB04C1
/// @DnDArgument : "color" "$FF0000FF"
/// @DnDArgument : "alpha" "false"
draw_set_colour($FF0000FF & $ffffff);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 73B7E09C
/// @DnDArgument : "font" "scorefont"
/// @DnDSaveInfo : "font" "b6f60d72-3ba6-472a-b925-8095b7299388"
draw_set_font(scorefont);

/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Health
/// @DnDVersion : 1
/// @DnDHash : 33608C04
/// @DnDArgument : "x1" "30"
/// @DnDArgument : "y1" "80"
/// @DnDArgument : "x2" "230"
/// @DnDArgument : "y2" "100"
/// @DnDArgument : "mincol" "$FF0003C4"
/// @DnDArgument : "maxcol" "$FF07BA2E"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
draw_healthbar(30, 80, 230, 100, __dnd_health, $FFFFFFFF, $FF0003C4 & $FFFFFF, $FF07BA2E & $FFFFFF, 0, (($FFFFFFFF>>24) != 0), (($FFFFFFFF>>24) != 0));