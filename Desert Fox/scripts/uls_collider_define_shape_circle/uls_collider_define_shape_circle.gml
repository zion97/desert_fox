///@description Define a custom corner for the object relative to the center
///uls_define_custom_corners()
///@param radius radius
///@param precision* precision*
function uls_collider_define_shape_circle() {

		//Values for checking light working
		var distance = argument[0];
		var size = 100 * min( 1, max(0.04, (argument_count > 1 ? argument[1] : 0.2)));
		corners = array_create(size, 0);
	
		//Create Each Corner
		for (var i = 0; i < size; i++) 
		{
			//Create array
			var i_array = array_create(4, 0);
			var angle = ((180 + (360 - i * (360/size))) % 360);
		
			i_array[2] = lengthdir_x(distance, angle);
			i_array[3] = lengthdir_y(distance, angle);
		
			//Set
			corners[i] = i_array;
		}
	
		//Update Corners
		scr_update_corners();


}
