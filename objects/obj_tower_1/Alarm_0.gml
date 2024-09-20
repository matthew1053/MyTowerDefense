/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 236377D2
/// @DnDArgument : "var" "instance_exists(objectToShoot)"
/// @DnDArgument : "value" "true"
if(instance_exists(objectToShoot) == true)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 61C4D21F
	/// @DnDParent : 236377D2
	/// @DnDArgument : "xpos" "x"
	/// @DnDArgument : "ypos" "y"
	/// @DnDArgument : "var" "bullet"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "obj_bullet"
	/// @DnDSaveInfo : "objectid" "obj_bullet"
	var bullet = instance_create_layer(x, y, "Instances", obj_bullet);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 729E4DEE
	/// @DnDParent : 236377D2
	/// @DnDArgument : "expr" "10"
	/// @DnDArgument : "var" "bullet.speed"
	bullet.speed = 10;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 252C579A
	/// @DnDParent : 236377D2
	/// @DnDArgument : "expr" "point_direction(x, y, objectToShoot.x, objectToShoot.y)"
	/// @DnDArgument : "var" "bullet.direction"
	bullet.direction = point_direction(x, y, objectToShoot.x, objectToShoot.y);

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 20488A34
	/// @DnDParent : 236377D2
	/// @DnDArgument : "steps" "fire_rate"
	alarm_set(0, fire_rate);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 405EAA50
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1FA6C424
	/// @DnDParent : 405EAA50
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "shooting"
	shooting = false;
}