/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 66CDDC70
/// @DnDArgument : "var" "global.spaceTrigger"
/// @DnDArgument : "value" "2"
if(global.spaceTrigger == 2)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 70B6A97A
	/// @DnDParent : 66CDDC70
	/// @DnDArgument : "speed" "-1"
	/// @DnDArgument : "speed_relative" "1"
	/// @DnDArgument : "type" "2"
	vspeed += -1;

	/// @DnDAction : YoYo Games.Instance Variables.Set_Health
	/// @DnDVersion : 1
	/// @DnDHash : 6AB7168A
	/// @DnDParent : 66CDDC70
	/// @DnDArgument : "health" "-1"
	/// @DnDArgument : "health_relative" "1"
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
	__dnd_health += real(-1);
}