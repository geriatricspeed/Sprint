/// @DnDAction : YoYo Games.Common.Get_Global
/// @DnDVersion : 1
/// @DnDHash : 6C489E9C
/// @DnDArgument : "var" "stepAim"
temp = global.stepAim;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 60AC52C3
/// @DnDArgument : "var" "temp"
if(temp == 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 366015C1
	/// @DnDParent : 60AC52C3
	/// @DnDArgument : "var" "direction"
	if(direction == 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1C4E8CD6
		/// @DnDParent : 366015C1
		/// @DnDArgument : "expr" "5"
		/// @DnDArgument : "var" "rot"
		rot = 5;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 636186B9
	/// @DnDParent : 60AC52C3
	/// @DnDArgument : "var" "direction"
	/// @DnDArgument : "value" "80"
	if(direction == 80)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2A98BF82
		/// @DnDParent : 636186B9
		/// @DnDArgument : "expr" "-5"
		/// @DnDArgument : "var" "rot"
		rot = -5;
	}

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
	/// @DnDVersion : 1
	/// @DnDHash : 41761465
	/// @DnDParent : 60AC52C3
	/// @DnDArgument : "direction" "rot"
	/// @DnDArgument : "direction_relative" "1"
	direction += rot;
}