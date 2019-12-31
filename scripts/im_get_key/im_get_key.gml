/// @description get input manager key
/// @param k


switch(argument0)
{
    case IM_PAUSE:              return global.im_key_pause;
    case IM_UP:                 return global.im_key_up;
    case IM_DOWN:               return global.im_key_down;
    case IM_LEFT:               return global.im_key_left;
    case IM_RIGHT:              return global.im_key_right;
    case IM_JUMP:               return global.im_key_jump;
    case IM_ATTACK:             return global.im_key_attack;
}