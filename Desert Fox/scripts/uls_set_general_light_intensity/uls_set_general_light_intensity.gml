///@description set the general light alpha, this alpha is considered after the original alpha of each light object
///@param alpha
function uls_set_general_light_intensity(argument0) {

	with(obj_uls_controller)
	{
		//Set
		final_light_alpha = argument0;
	}


}
