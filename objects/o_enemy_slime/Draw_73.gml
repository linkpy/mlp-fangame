
if health_point < E_SLIME_MAX_HEALTH then
    draw_healthbar(
        bbox_left, y + E_SLIME_DEPTH_OFFSET + 2, 
        bbox_right, y + E_SLIME_DEPTH_OFFSET + 3, 
        (health_point / E_SLIME_MAX_HEALTH) * 100,
        c_black, c_red, c_red, 0,
        true, false
    )

