x += lengthdir_x(spd, direction);
y += lengthdir_y(spd, direction);

if (place_meeting(x,y, obj_wall)) instance_destroy();