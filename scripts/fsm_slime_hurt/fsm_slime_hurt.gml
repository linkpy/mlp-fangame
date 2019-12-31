//

//////////////////////////////////////////////////////////////////////// CREATE
if argument0 == ev_create then
begin
    sprite_index = s_enemy_slime_hurt;
    image_index = 0;
    image_xscale = sign(player.x - x) * abs(image_xscale);
    
    velocity_x = -sign(player.x - x) * E_SLIME_KNOCKBACK_SPEED;
    velocity_y -= E_SLIME_KNOCKBACK_IMPULE;
end

/////////////////////////////////////////////////////////////////////// DESTROY
if argument0 == ev_destroy then
    image_xscale = abs(image_xscale);

////////////////////////////////////////////////////////////////////////// STEP
if argument0 == ev_step and argument1 == ev_step_normal then
begin
    velocity_y += PHYS_GRAVITY;
    
    phys_move(true, false);
    
    if is_on_ground then
        velocity_x = 0;
end

///////////////////////////////////////////////////////////////// ANIMATION END
if argument0 == ev_other and argument1 == ev_animation_end then
    switch_state(E_STATE_CHASE);