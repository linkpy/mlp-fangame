/// @description set input manager key
/// @param k
/// @param v


switch(argument0)
{
    case IM_PAUSE:              global.im_key_pause = argument1; break;
    case IM_UP:                 global.im_key_up = argument1; break;
    case IM_DOWN:               global.im_key_down = argument1; break;
    case IM_LEFT:               global.im_key_left = argument1; break;
    case IM_RIGHT:              global.im_key_right = argument1; break;
    case IM_JUMP:               global.im_key_jump = argument1; break;
    case IM_ATTACK:             global.im_key_attack = argument1; break;
}