/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 108EEE68
draw_set_halign(fa_left);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 3DEB04C1
/// @DnDArgument : "color" "$FF0000FF"
draw_set_colour($FF0000FF & $ffffff);
draw_set_alpha(($FF0000FF >> 24) / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 73B7E09C
/// @DnDArgument : "font" "scorefont"
/// @DnDSaveInfo : "font" "b6f60d72-3ba6-472a-b925-8095b7299388"
draw_set_font(scorefont);

/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
/// @DnDVersion : 1
/// @DnDHash : 428AC5D4
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
draw_text(x + 0, y + 0, string("Score: ") + string(__dnd_score));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6061C81A
/// @DnDArgument : "var" "global.fuel"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "300"
if(global.fuel < 300)
{
	/// @DnDAction : YoYo Games.Common.Get_Global
	/// @DnDVersion : 1
	/// @DnDHash : 7D59904E
	/// @DnDParent : 6061C81A
	/// @DnDArgument : "output" "fuelTemp"
	/// @DnDArgument : "var" "fuel"
	fuelTemp = global.fuel;

	/// @DnDAction : YoYo Games.Drawing.Draw_Gradient_Rect
	/// @DnDVersion : 1
	/// @DnDHash : 27C25250
	/// @DnDParent : 6061C81A
	/// @DnDArgument : "x1" "20"
	/// @DnDArgument : "y1" "fuelTemp"
	/// @DnDArgument : "x2" "50"
	/// @DnDArgument : "y2" "300"
	/// @DnDArgument : "fill" "1"
	draw_rectangle_colour(20, fuelTemp, 50, 300, $FFFFFF & $FFFFFF, $FFFFFF & $FFFFFF, $FFFFFF & $FFFFFF, $FFFFFF & $FFFFFF, 0);
}