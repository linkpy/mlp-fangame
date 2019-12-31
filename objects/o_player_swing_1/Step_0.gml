
if floor(image_index) == 3 and not attack_done then
begin
    var list = ds_list_create();

    collision_rectangle_list(
        bbox_left, bbox_top, bbox_right, bbox_bottom, 
        o_generic_enemy, false, true, list, false
    );
    
    var i;
    for( i = 0; i < ds_list_size(list); i += 1 )
    begin
        var e = list[|i];
        apply_damages(e, damage_amount);
        
        with e begin
            switch_state(E_STATE_HURT);
        end
    end
    
    ds_list_destroy(list);
    attack_done = true;
end