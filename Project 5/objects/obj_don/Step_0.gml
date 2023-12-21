
//create gravity
vspd = vspd + grav;

//horizontal collision
if (place_meeting(x + hspd, y, obj_wall)){
	while(!place_meeting(x + sign(hspd), y, obj_wall)){
		x = x + sign(hspd);
	}
	hspd = -hspd;
}
x = x + hspd;

//vertical collision
if (!place_meeting(x, y + vspd, obj_wall)){
	while(!place_meeting(x, y + sign(vspd), obj_wall)){
		y = y + sign(vspd);
	}
	vspd = 0;
}
y = y + vspd;

//animation
if(!place_meeting(x, y+1, obj_wall))
{
	sprite_index = spr_don_idle;
	image_speed = 0;
	if(sign(vspd) > 0) image_index = 1; else image_index = 0;
}
else
{
	image_speed = 1;
	if (hspd == 0)
	{
		sprite_index = spr_don_idle;
	}
	else if (hspd > 0)
	{
		sprite_index = spr_don_walk;
		image_xscale = 1;
	}
	else
	{
		sprite_index = spr_don_walk;
		image_xscale = -1;
	}
}

//------------------------------------------
//spawn bodyguards
var bodyguard = irandom(550);

if (bodyguard == 1) && (distance_to_object(obj_player)<200){
	instance_create_layer(x, y, "Instances", obj_bodyguard);
}