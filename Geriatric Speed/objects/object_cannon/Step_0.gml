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