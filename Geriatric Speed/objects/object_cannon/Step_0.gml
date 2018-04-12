/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 1F4F1A97
/// @DnDArgument : "obj" "object_arrow"
/// @DnDSaveInfo : "obj" "b6de7319-a230-468b-b60a-47f43ccd0483"
var l1F4F1A97_0 = false;
l1F4F1A97_0 = instance_exists(object_arrow);
if(l1F4F1A97_0)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
	/// @DnDVersion : 1
	/// @DnDHash : 24ED0FED
	/// @DnDParent : 1F4F1A97
	/// @DnDArgument : "angle" "object_arrow.direction"
	image_angle = object_arrow.direction;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6AFFCBFA
/// @DnDArgument : "var" "image_index"
/// @DnDArgument : "value" "9"
if(image_index == 9)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 19984C8E
	/// @DnDParent : 6AFFCBFA
	/// @DnDArgument : "speed" "0"
	image_speed = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5E83AE66
	/// @DnDParent : 6AFFCBFA
	/// @DnDArgument : "var" "image_index"
	image_index = 0;
}