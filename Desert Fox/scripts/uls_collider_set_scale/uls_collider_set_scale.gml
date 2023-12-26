///@description set the image_scale of a given light collider
///@param id
///@param image_xscale
///@param image_yscale
function uls_collider_set_scale(argument0, argument1, argument2) {

		with(argument0)
		{
			//Set
			image_xscale = argument1;
			image_yscale = argument2;
		
			//Update
			scr_update_corners();
		}


}
