/// @description applies damages to the given object
/// @param obj
/// @param amnt

argument0.health_point -= argument1;

var di = instance_create_depth(argument0.x, argument0.y, -20000, o_damages);
di.amount = argument1;