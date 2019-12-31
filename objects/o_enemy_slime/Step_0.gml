
if health_point <= 0 then
begin
    instance_destroy(id);
    return;
end

call_state(ev_step, ev_step_normal);
