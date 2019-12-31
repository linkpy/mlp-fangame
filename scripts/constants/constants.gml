
///////////////////////////////////////////////////////////////// input manager
// key slots
#macro IM_PAUSE                                 0
#macro IM_UP                                    1
#macro IM_DOWN                                  2
#macro IM_LEFT                                  3
#macro IM_RIGHT                                 4
#macro IM_JUMP                                  5
#macro IM_ATTACK                                6

// default mapping
#macro IM_DEFAULT_PAUSE                         vk_escape
#macro IM_DEFAULT_UP                            vk_up
#macro IM_DEFAULT_DOWN                          vk_down
#macro IM_DEFAULT_LEFT                          vk_left
#macro IM_DEFAULT_RIGHT                         vk_right
#macro IM_DEFAULT_JUMP                          vk_space
#macro IM_DEFAULT_ATTACK                        ord("W")


/////////////////////////////////////////////////////////////////////// physics
#macro PHYS_GRAVITY                             0.33


////////////////////////////////////////////////////////////////////// o_camera
// Display constants
#macro CAMERA_VIEW_WIDTH                        (1920 / 4)
#macro CAMERA_VIEW_HEIGHT                       (1080 / 4)
#macro CAMERA_VIEW_SCALE                        3
// Motion constants
#macro CAMERA_MOTION_FACTOR                     0.2


//////////////////////////////////////////////////////////// o_player_healthbar
// General
#macro GUI_PL_HEALTHBAR_SCALE                   4
// Beginning sub-region
#macro GUI_PL_HEALTHBAR_FG_SUB_BEGIN_LEFT       17
#macro GUI_PL_HEALTHBAR_FG_SUB_BEGIN_TOP        5
#macro GUI_PL_HEALTHBAR_FG_SUB_BEGIN_WIDTH      1
#macro GUI_PL_HEALTHBAR_FG_SUB_BEGIN_HEIGHT     4
// Middle sub-region
#macro GUI_PL_HEALTHBAR_FG_SUB_MIDDLE_LEFT      18
#macro GUI_PL_HEALTHBAR_FG_SUB_MIDDLE_TOP       5
#macro GUI_PL_HEALTHBAR_FG_SUB_MIDDLE_WIDTH     102
#macro GUI_PL_HEALTHBAR_FG_SUB_MIDDLE_HEIGHT    4
// Ending sub-region
#macro GUI_PL_HEALTHBAR_FG_SUB_END_LEFT         120
#macro GUI_PL_HEALTHBAR_FG_SUB_END_TOP          5
#macro GUI_PL_HEALTHBAR_FG_SUB_END_WIDTH        1
#macro GUI_PL_HEALTHBAR_FG_SUB_END_HEIGHT       2
// Foreground 
#macro GUI_PL_HEALTHBAR_FG_OFFSET_X             17
#macro GUI_PL_HEALTHBAR_FG_OFFSET_Y             5
#macro GUI_PL_HEALTHBAR_FG_LENGTH               104

////////////////////////////////////////////////////////////////////// o_player
// States
#macro P_STATE_NONE	                            fsm_player_none                  // Idle / walkin
#macro P_STATE_ATTACK_1                         fsm_player_attack1               // First light attack
#macro P_STATE_ATTACK_2                         noone                            // Second light attack
#macro P_STATE_ATTACK_3                         noone                            // medium attack
#macro P_STATE_ATTACK_4                         noone                            // heavy attack
// Corrective constants
#macro P_DEPTH_OFFSET                           12 
// General constants
#macro P_MAX_HEALTH                             100
#macro P_MOVEMENT_SPEED                         2.5
#macro P_JUMP_IMPULSE                           7.1


/////////////////////////////////////////////////////////////// o_generic_enemy
// States
#macro E_STATE_HURT                             asset_get_index("fsm_" + name + "_hurt")
#macro E_STATE_NONE                             asset_get_index("fsm_" + name + "_none")
#macro E_STATE_CHASE                            asset_get_index("fsm_" + name + "_chase")
#macro E_STATE_ATTACK_INIT                      asset_get_index("fsm_" + name + "_attack_init")
#macro E_STATE_ATTACK_ACTIVE                    asset_get_index("fsm_" + name + "_attack_active")
#macro E_STATE_ATTACK_RECOV                     asset_get_index("fsm_" + name + "_attack_recover")


///////////////////////////////////////////////////////////////// o_enemy_slime
// General constants
#macro E_SLIME_MAX_HEALTH                       3
#macro E_SLIME_MOVEMENT_SPEED                   1.5
// Corrective constants
#macro E_SLIME_DEPTH_OFFSET                     5
// E_STATE_HURT constants
#macro E_SLIME_KNOCKBACK_SPEED                  3
#macro E_SLIME_KNOCKBACK_IMPULE                 4
// E_STATE_NONE constants
#macro E_SLIME_PLAYER_DETECT_RANGE              150
// E_STATE_CHASE constants
#macro E_SLIME_ANIMATION_FACTOR                 4
#macro E_SLIME_ATTACK_RANGE                     45
// E_STATE_ATTACK_ACTIVE constants
#macro E_SLIME_ATTACK_DAMAGES                   2
#macro E_SLIME_ATTACK_DURATION                  24
#macro E_SLIME_ATTACK_SPEED                     3
#macro E_SLIME_ATTACK_IMPULSE                   4.5
