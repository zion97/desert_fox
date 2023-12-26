///@description Define a custom corner for the object relative to the center
///uls_define_custom_corners()
///@param x1 x1
///@param y1 y1
///@param x2 x2
///@param y2 y2
///@param x3 x3
///@param y3 y3
///@param ... ...
function uls_collider_define_shape_custom() {

		//Set Up
		var hold_image_angle = image_angle;
		image_angle = 0;

		//Values for checking light working
		var size = floor(argument_count * 0.5);
		corners = array_create(size, 0);
	
		//Create Each Corner
		for (var i = 0; i < size; i++) 
		{
			//Create array
			var i_array = array_create(4, 0);
			
			i_array[2] = argument[i * 2];
			i_array[3] = argument[(i * 2) + 1];
		
			//Set
			corners[i] = i_array;
		}
	
		//Get Back
		image_angle = hold_image_angle;
	
		//Update Corners
		scr_update_corners();


}
