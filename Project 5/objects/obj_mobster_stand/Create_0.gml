hspd = 0;
vspd = 0;
grav = .2;
walkspd = 0;

hp = 5;
flash = 0;

if (has_weapon)
{
	mygun = instance_create_layer(x,y, "Weapons", obj_eGun)
	with (mygun)
	{
		owner = other.id;
	}
}
else mygun = noone;