/// @describe Default state of the player
/// @param ev
/// @param subev


//////////////////////////////////////////////////////////////////////// CREATE
if argument0 == ev_create then
begin
	sprite_index = s_player_idle;
end

////////////////////////////////////////////////////////////////////////// STEP
if argument0 == ev_step and argument1 == ev_step_normal then
begin
	// Input and correction
	velocity_x = im_axis(IM_RIGHT, IM_LEFT) * P_MOVEMENT_SPEED;
	velocity_y += PHYS_GRAVITY;
	
	if is_on_ground and im_is_pressed(IM_JUMP) then
		velocity_y -= P_JUMP_IMPULSE;
	
	// Collision checking and movement
	phys_move(false, false);
	
	// Animation control
	if abs(velocity_x) != 0 then
		sprite_index = s_player_walk;
	else
		sprite_index = s_player_idle;
	
	// Sprite flipping
	if velocity_x < 0 then
		image_xscale = -abs(image_xscale);
	if velocity_x > 0 then
		image_xscale = abs(image_xscale);
end

//////////////////////////////////////////////////////////////////// KEYPRESS:W
if argument0 == ev_keypress and argument1 == ord("W") then
	switch_state(P_STATE_ATTACK_1);