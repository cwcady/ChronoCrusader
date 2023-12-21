
//create gravity
vspd = vspd + grav;


//horizontal collision
if (place_meeting(x + hspd, y, obj_wall)){
	while(!place_meeting(x + sign(hspd), y, obj_wall)){
		x = x + sign(hspd);
	}
	hspd *=- bouncedecay;
}
x += hspd;

//vertical collision
if (place_meeting(x, y + vspd, obj_wall)){
	while(!place_meeting(x, y + sign(vspd), obj_wall)){
		y = y + sign(vspd);
	}
	vspd *=- bouncedecay;
	
}
y+=vspd;

if (hspd < .5 && vspd < .5)
{
	image_index =3;
}

