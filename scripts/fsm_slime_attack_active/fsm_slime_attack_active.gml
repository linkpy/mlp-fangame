//

//////////////////////////////////////////////////////////////////////// CREATE
if argument0 == ev_create then
begin
    sprite_index = s_enemy_slime_attack;
    image_index = 0;
    image_xscale = attack_dir * abs(image_xscale);
    
    velocity_y -= E_SLIME_ATTACK_IMPULSE;
    velocity_x = attack_dir * E_SLIME_ATTACK_SPEED;
end


/////////////////////////////////////////////////////////////////////// DESTROY
if argument0 == ev_destroy then
    image_xscale = abs(image_xscale);


////////////////////////////////////////////////////////////////////////// STEP
if argument0 == ev_step and argument1 == ev_step_normal then
begin
    attack_counter += 1
    
    if attack_counter >= E_SLIME_ATTACK_DURATION and is_on_ground then
    begin
        switch_state(E_STATE_ATTACK_RECOV);
        return;
    end

    velocity_y += PHYS_GRAVITY;
    
    phys_move(true, false);
    
    if not attack_done and place_meeting(x, y, o_player) then
    begin
        apply_damages(player, E_SLIME_ATTACK_DAMAGES);
        attack_done = true;
    end
end