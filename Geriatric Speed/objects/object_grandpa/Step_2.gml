/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
/// @DnDVersion : 1
/// @DnDHash : 558554A0
/// @DnDArgument : "x" "8"
/// @DnDArgument : "y" "8"
/// @DnDArgument : "caption" ""Distance: ""
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
draw_text(8, 8, string("Distance: ") + string(__dnd_score));