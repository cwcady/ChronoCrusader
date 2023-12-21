/// @description spawner
if (triggered)
{
	//check list for enemies, if they are the right wave then spawn
	
	for (var i = 0; i < ds_list_size(waves); i++)
	{
		var next = ds_list_find_value(waves, i)
		if (next[_WAVE] == current_wave) && (next[_DELAY] == timer)
		{
			var spawnpoint = next[_SPAWN];
			instance_create_layer(spawn[spawnpoint, 0], spawn[spawnpoint, 1], "Instances", next[_TYPE]);
		}
	}

//increase timer
timer++;

//next wave when all enemies are dead
if (remaining[current_wave] <=0)
{
	if (current_wave == total_waves)
	{
		with (obj_door) closed = false;
		instance_destroy();
	}
	else
	{
		current_wave++;
		timer = 0;
	}
}
}