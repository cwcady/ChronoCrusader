//create gravity
vspd = vspd + grav;


//horizontal collision
if (place_meeting(x + hspd, y, obj_wall)){
	while(!place_meeting(x + sign(hspd), y, obj_wall)){
		x = x + sign(hspd);
	}
	hspd = 0;
}
x = x + hspd;

//vertical collision
if (place_meeting(x, y + vspd, obj_wall)){
	while(!place_meeting(x, y + sign(vspd), obj_wall)){
		y = y + sign(vspd);
	}
	vspd = 0;
}
y = y + vspd;


//movement
if (vspd = 0 && place_meeting(x, y + 1, obj_wall)){
	vspd = -6;
	hspd = random_range(-2, 2);
}


//weapons
if (weapon1 >= 1){
	instance_create_layer(x, y, "Instances", obj_fireball);
	weapon1 = 0;
}

weapon1 = weapon1 + .01;
