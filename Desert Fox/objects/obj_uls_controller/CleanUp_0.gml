/// @description Clean Up

	//Clean Surface
	if (surface_exists(surf_final_light))
	{
		surface_free(surf_final_light);
	}
	if (surface_exists(surf_particles))
	{
		surface_free(surf_particles);
	}
	if (surface_exists(surf_aux_blur))
	{
		surface_free(surf_aux_blur);
	}
	
	//Clean particle system
	part_system_destroy(part_sys);