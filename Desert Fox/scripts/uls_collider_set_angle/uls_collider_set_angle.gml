///@description set the image_angle of a given light collider
///@param id
///@param image_angle
function uls_collider_set_angle(argument0, argument1) {

		with(argument0)
		{
			//Set
			image_angle = argument1;
			scr_update_corners();
		}


}
