//get player input
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_space);
//calculate movement
if (knockback_delay <=0)
{
var move = key_right - key_left;

hspd = move * walkspd;
can_damage = true;
}
knockback_delay--;
//create gravity
vspd = vspd + grav;

//jumping
if (place_meeting(x, y + 1, obj_wall)) && (key_jump){
	vspd = -6.1;
}

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

//animation
if(key_left){
	sprite_index = spr_player_run;
	image_xscale = -1;
}
else if (key_right){
	sprite_index = spr_player_run;
	image_xscale = 1;
}
else{
	sprite_index = spr_player_idle;
}
//restart room if dead
if (hp <=0){
	room_goto(Lose);
}





