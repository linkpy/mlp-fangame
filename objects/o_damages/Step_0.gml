
lifetime -= 1;

if lifetime <= 0 then
begin
    instance_destroy(id);
    return;
end

y = lerp(y, target_y, lerp_speed);
