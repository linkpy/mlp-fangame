
camera_set_view_size(view_camera[0], CAMERA_VIEW_WIDTH, CAMERA_VIEW_HEIGHT);

if( instance_exists(o_player) ) 
{
	var dx = clamp(
		o_player.x - CAMERA_VIEW_WIDTH / 2, 
		0, room_width - CAMERA_VIEW_WIDTH
	);
	var dy = clamp(
		o_player.y - CAMERA_VIEW_HEIGHT / 2, 
		0, room_height - CAMERA_VIEW_HEIGHT
	);
	
	var cx = camera_get_view_x(view_camera[0]);
	var cy = camera_get_view_y(view_camera[0]);
	
	camera_set_view_pos(
		view_camera[0], 
		lerp(cx, dx, CAMERA_MOTION_FACTOR), 
		lerp(cy, dy, CAMERA_MOTION_FACTOR)
	);
}