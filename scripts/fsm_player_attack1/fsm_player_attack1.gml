//

if argument0 == ev_create then
begin
    sprite_index = s_player_swing1;
    image_index = 0;
    
    var inst = instance_create_layer(x, y, "Instances", o_player_swing_1);
    inst.image_xscale = sign(image_xscale) * abs(inst.image_xscale);
end

if argument0 == ev_other and argument1 == ev_animation_end then
    if sprite_index == s_player_swing1 then
    	switch_state(P_STATE_NONE);
