/// @description health decay


if (hp <=0)
{
	instance_destroy();	
	obj_player.myscore += 50;
}