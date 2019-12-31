/// @descrition Moves a o_physics_object
/// @param x_bounce
/// @param y_bounce


// Horizontal motion
if place_meeting(x + velocity_x, y, o_physics_collidable) then
begin
    while not place_meeting(x + sign(velocity_x), y, o_physics_collidable) do
        x += sign(velocity_x)
    
    if argument0 then
        velocity_x *= -1;
    else
    begin
        velocity_x = 0;
        is_on_wall = true;
    end
end
else
    is_on_wall = false;

x += velocity_x;


// Vertical motion
if place_meeting(x, y + velocity_y, o_physics_collidable) then
begin
    while not place_meeting(x, y + sign(velocity_y), o_physics_collidable) do
        y += sign(velocity_y)
    
    if argument1 then
        velocity_y *= -1;
    else
    begin
        if velocity_y < 0 then
            is_on_ceiling = true;
        else
            is_on_ground = true;
        
        velocity_y = 0;
    end
end
else
begin
    is_on_ceiling = false;
    is_on_ground = false;
end

y += velocity_y;