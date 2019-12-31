//

//////////////////////////////////////////////////////////////////////// CREATE
if argument0 == ev_create then
begin
    attack_done = false;
    attack_dir = sign(player.x - x);
    attack_counter = 0;
    
    sprite_index = s_enemy_slime_attack_init;
    image_index = 0;
    
    if player.x < x then
        image_xscale = -image_xscale
end

/////////////////////////////////////////////////////////////////////// DESTROY
if argument0 == ev_destroy then
    image_xscale = abs(image_xscale);

///////////////////////////////////////////////////////////////// ANIMATION END
if argument0 == ev_other and argument1 == ev_animation_end then
    switch_state(E_STATE_ATTACK_ACTIVE);