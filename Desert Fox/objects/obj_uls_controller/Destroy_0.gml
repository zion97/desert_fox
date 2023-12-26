/// @description Destroy All Light Related Objects

	//Destroy Each Light
	with(obj_uls_light)
	{
		instance_destroy();
	}
	
	//Destroy aux
	with(obj_uls_light_renderer)
	{
		instance_destroy();
	}
	with(obj_uls_shadow_renderer)
	{
		instance_destroy();
	}