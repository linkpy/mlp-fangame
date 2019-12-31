
if state <> noone then
    script_execute(state, ev_destroy);

state = argument0;

if state <> noone then
    script_execute(state, ev_create);