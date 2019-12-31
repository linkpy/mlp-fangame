//

//////////////////////////////////////////////////////////////////////// CREATE
if argument0 == ev_create then
begin
    sprite_index = s_enemy_slime_attack_recov;
    image_index = 0;
    image_angle = 0;
end


///////////////////////////////////////////////////////////////// ANIMATION END
if argument0 == ev_other and argument1 == ev_animation_end then
    switch_state(E_STATE_CHASE);