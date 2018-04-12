/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 66CDDC70
/// @DnDArgument : "var" "global.spaceTrigger"
/// @DnDArgument : "value" "2"
if(global.spaceTrigger == 2)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2324B09E
	/// @DnDParent : 66CDDC70
	/// @DnDArgument : "var" "global.fuel"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "300"
	if(global.fuel < 300)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 70B6A97A
		/// @DnDParent : 2324B09E
		/// @DnDArgument : "speed" "-1"
		/// @DnDArgument : "speed_relative" "1"
		/// @DnDArgument : "type" "2"
		vspeed += -1;
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 18B2C34C
		/// @DnDParent : 2324B09E
		/// @DnDArgument : "value" "1"
		/// @DnDArgument : "value_relative" "1"
		/// @DnDArgument : "var" "fuel"
		global.fuel += 1;
	}
}