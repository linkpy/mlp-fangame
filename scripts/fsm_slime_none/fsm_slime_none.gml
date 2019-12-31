//

////////////////////////////////////////////////////////////////////////// STEP
if argument0 == ev_step and argument1 == ev_step_normal then
begin
    velocity_y += PHYS_GRAVITY;
    phys_move(false, false);

    if not instance_exists(o_player) then
        return;
    
    if player == noone then
        player = instance_find(o_player, 0);
    
    var distance = distance_to_object(player);
    if distance < E_SLIME_PLAYER_DETECT_RANGE then
        switch_state(E_STATE_CHASE);
end