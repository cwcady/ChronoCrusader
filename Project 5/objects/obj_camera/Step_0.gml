//update camera

//update destination
if (instance_exists(follow)){
	xTo = follow.x;
	yTo = follow.y;
}

//update obj position
x += (xTo - x)/10;
y += (yTo - y)/10;

x = clamp(x, view_w_half, room_width - view_w_half);
y = clamp(y, view_h_half, room_height - view_h_half);
//update camera view
camera_set_view_pos(camera, x-view_w_half, y-view_h_half);


//parallax backgrounds

if(layer_exists("Background_1"))
{
	layer_x("Background_1", x/2);
}
if(layer_exists("Background_2"))
{
	layer_x("Background_2", x/4);
}
if(layer_exists("Background_3"))
{
	layer_x("Background_3", x/6);
}
if(layer_exists("Background_4"))
{
	layer_x("Background_4", x);
}