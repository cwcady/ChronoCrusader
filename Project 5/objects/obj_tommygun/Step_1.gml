//update position
x = obj_player.x;
y = obj_player.y - 30;

image_angle = point_direction(x, y, mouse_x, mouse_y);

//shooting
firingdelay = firingdelay - 1;
recoil = max(0, recoil - 1);
if (mouse_check_button(mb_left)) && (firingdelay < 0)
{
	recoil = 2;
	firingdelay = 5;
	with (instance_create_layer(x, y, "Bullet", obj_bullet))
	{
		speed = 25;
		direction = other.image_angle + random_range(-1,1);
		image_angle = direction;
	}
}

//add recoil to gun
x = x- lengthdir_x(recoil, image_angle);
y = y- lengthdir_x(recoil, image_angle);

//make sure gun doesnt go upside down
if (image_angle > 90) && (image_angle < 270)
{
	image_yscale = -1;
}
else
{
	image_yscale = 1;
}