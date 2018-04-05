/// @DnDAction : YoYo Games.Common.Get_Global
/// @DnDVersion : 1
/// @DnDHash : 4B6EE128
/// @DnDArgument : "var" "spaceTrigger"
temp = global.spaceTrigger;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6BDEBDA2
/// @DnDArgument : "var" "temp"
if(temp == 0)
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 50DD768F
	/// @DnDInput : 2
	/// @DnDParent : 6BDEBDA2
	/// @DnDArgument : "value" "1"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "value_1" "1"
	/// @DnDArgument : "value_relative_1" "1"
	/// @DnDArgument : "var" "stepAim"
	/// @DnDArgument : "var_1" "spaceTrigger"
	global.stepAim += 1;
	global.spaceTrigger += 1;

	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 3196577F
	/// @DnDParent : 6BDEBDA2
	image_speed = 1;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3C729EFB
/// @DnDArgument : "var" "temp"
/// @DnDArgument : "value" "1"
if(temp == 1)
{
	/// @DnDAction : YoYo Games.Movement.Set_Gravity_Force
	/// @DnDVersion : 1
	/// @DnDHash : 730C4AD5
	/// @DnDApplyTo : 9065fecd-118a-421e-b93b-ff1fed187214
	/// @DnDParent : 3C729EFB
	/// @DnDArgument : "force" "0.2"
	with(object_grandpa) gravity = 0.2;

	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 6D77692D
	/// @DnDParent : 3C729EFB
	/// @DnDArgument : "speed" "0"
	image_speed = 0;

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 25996F99
	/// @DnDParent : 3C729EFB
	/// @DnDArgument : "var" "arr_angle"
	/// @DnDArgument : "value" "direction"
	var arr_angle = direction;

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
	/// @DnDVersion : 1
	/// @DnDHash : 042D8CC1
	/// @DnDApplyTo : 9065fecd-118a-421e-b93b-ff1fed187214
	/// @DnDParent : 3C729EFB
	/// @DnDArgument : "direction" "arr_angle"
	with(object_grandpa) direction = arr_angle;

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 35926BD9
	/// @DnDParent : 3C729EFB
	/// @DnDArgument : "var" "arr_ind"
	/// @DnDArgument : "value" "image_index"
	var arr_ind = image_index;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 006F1E0E
	/// @DnDParent : 3C729EFB
	/// @DnDArgument : "var" "direction"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "9"
	if(direction <= 9)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 2473B022
		/// @DnDApplyTo : 9065fecd-118a-421e-b93b-ff1fed187214
		/// @DnDParent : 006F1E0E
		/// @DnDArgument : "speed" "(arr_ind + 1)*2"
		with(object_grandpa) speed = (arr_ind + 1)*2;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 7DC8B01D
	/// @DnDParent : 3C729EFB
	else
	{
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 159B7A15
		/// @DnDApplyTo : 9065fecd-118a-421e-b93b-ff1fed187214
		/// @DnDParent : 7DC8B01D
		/// @DnDArgument : "speed" "(-arr_ind + 17)*2"
		with(object_grandpa) speed = (-arr_ind + 17)*2;
	}

	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 0BDF78CD
	/// @DnDApplyTo : cbd28e19-22a2-4221-8ace-18621fba10c0
	/// @DnDParent : 3C729EFB
	with(object_cannon) image_speed = 1;

	/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
	/// @DnDVersion : 1
	/// @DnDHash : 2A4B8852
	/// @DnDApplyTo : 80eb2440-3617-42bb-a3ac-bac734fa5c09
	/// @DnDParent : 3C729EFB
	/// @DnDArgument : "angle" "object_cannon.direction"
	with(object_spawnpoint) image_angle = object_cannon.direction;

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
	/// @DnDVersion : 1
	/// @DnDHash : 6095D554
	/// @DnDApplyTo : 80eb2440-3617-42bb-a3ac-bac734fa5c09
	/// @DnDParent : 3C729EFB
	/// @DnDArgument : "direction" "100"
	/// @DnDArgument : "direction_relative" "1"
	with(object_spawnpoint) direction += 100;

	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 07B4AE1F
	/// @DnDApplyTo : 9065fecd-118a-421e-b93b-ff1fed187214
	/// @DnDParent : 3C729EFB
	/// @DnDArgument : "x" "object_spawnpoint.x"
	/// @DnDArgument : "y" "object_spawnpoint.y"
	with(object_grandpa) {
	x = object_spawnpoint.x;
	y = object_spawnpoint.y;
	}

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6058D7D8
	/// @DnDParent : 3C729EFB
	instance_destroy();
}