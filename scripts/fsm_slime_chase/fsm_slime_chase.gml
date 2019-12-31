//

//////////////////////////////////////////////////////////////////////// CREATE
if argument0 == ev_create then
begin
    sprite_index = s_enemy_slime_normal;
    image_xscale = abs(image_xscale);
    image_speed = E_SLIME_ANIMATION_FACTOR;
end

/////////////////////////////////////////////////////////////////////// DESTROY
if argument0 == ev_destroy then
begin
    image_speed = 1;
end

////////////////////////////////////////////////////////////////////////// STEP
if argument0 == ev_step and argument1 == ev_step_normal then
begin
    if distance_to_object(player) <= E_SLIME_ATTACK_RANGE and is_on_ground then
    begin
        switch_state(E_STATE_ATTACK_INIT);
        return;
    end

    velocity_x = sign(player.x - x) * E_SLIME_MOVEMENT_SPEED;
    velocity_y += PHYS_GRAVITY;
    phys_move(false, false);
end