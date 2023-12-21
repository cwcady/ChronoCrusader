/// @description health decay


if (hp <=0)
{
	with (mygun) instance_destroy();
	instance_destroy();	
	obj_player.myscore += 5;
}