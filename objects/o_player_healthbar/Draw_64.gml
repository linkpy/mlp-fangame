// @description

if player == noone then
    return;

var factor = player.health_point / P_MAX_HEALTH;
var len = ceil(factor * GUI_PL_HEALTHBAR_FG_LENGTH);

draw_sprite_ext(s_player_healthbar_bg, 0, 0, 0, 4, 4, 0, c_white, 1);

if player.health_point <= 0 then
    return;


var middle_x = (GUI_PL_HEALTHBAR_FG_OFFSET_X + GUI_PL_HEALTHBAR_FG_SUB_BEGIN_WIDTH) * GUI_PL_HEALTHBAR_SCALE;
var middle_sx = GUI_PL_HEALTHBAR_SCALE * factor;
var end_x = middle_x + middle_sx * GUI_PL_HEALTHBAR_FG_SUB_MIDDLE_WIDTH;


draw_sprite_general(
    s_player_healthbar_fg, 0,
    GUI_PL_HEALTHBAR_FG_SUB_BEGIN_LEFT, 
    GUI_PL_HEALTHBAR_FG_SUB_BEGIN_TOP,
    GUI_PL_HEALTHBAR_FG_SUB_BEGIN_WIDTH, 
    GUI_PL_HEALTHBAR_FG_SUB_BEGIN_HEIGHT,
    GUI_PL_HEALTHBAR_FG_OFFSET_X * GUI_PL_HEALTHBAR_SCALE, 
    GUI_PL_HEALTHBAR_FG_OFFSET_Y * GUI_PL_HEALTHBAR_SCALE,
    GUI_PL_HEALTHBAR_SCALE, GUI_PL_HEALTHBAR_SCALE,
    0, c_white, c_white, c_white, c_white, 1
);

draw_sprite_general(
    s_player_healthbar_fg, 0,
    GUI_PL_HEALTHBAR_FG_SUB_MIDDLE_LEFT, 
    GUI_PL_HEALTHBAR_FG_SUB_MIDDLE_TOP,
    GUI_PL_HEALTHBAR_FG_SUB_MIDDLE_WIDTH, 
    GUI_PL_HEALTHBAR_FG_SUB_MIDDLE_HEIGHT,
    middle_x, 
    GUI_PL_HEALTHBAR_FG_OFFSET_Y * GUI_PL_HEALTHBAR_SCALE,
    middle_sx, 
    GUI_PL_HEALTHBAR_SCALE,
    0, c_white, c_white, c_white, c_white, 1
);

draw_sprite_general(
    s_player_healthbar_fg, 0,
    GUI_PL_HEALTHBAR_FG_SUB_END_LEFT, 
    GUI_PL_HEALTHBAR_FG_SUB_END_TOP,
    GUI_PL_HEALTHBAR_FG_SUB_END_WIDTH, 
    GUI_PL_HEALTHBAR_FG_SUB_END_HEIGHT,
    end_x, 
    GUI_PL_HEALTHBAR_FG_OFFSET_Y * GUI_PL_HEALTHBAR_SCALE,
    GUI_PL_HEALTHBAR_SCALE, 
    GUI_PL_HEALTHBAR_SCALE,
    0, c_white, c_white, c_white, c_white, 1
);
