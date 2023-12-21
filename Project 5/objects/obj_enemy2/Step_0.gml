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
if (place_meeting(x, y + vspd, obj_wall)){
	while(!place_meeting(x, y + sign(vspd), obj_wall)){
		y = y + sign(vspd);
	}
	vspd = 0;
}
y = y + vspd;

//weapons
if (weapon2 >= 1){
	instance_create_layer(x, y, "Instances", obj_bones);
	weapon2 = 0;
}

weapon2 = weapon2 + .01;
weapon3 = irandom_range(-100, 50)
if (weapon3 = 1){
	instance_create_layer(x, y, "Instances", obj_bomb);
	weapon3 = 0;
}



