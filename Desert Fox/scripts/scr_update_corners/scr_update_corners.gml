///@description Update the values inside a light collider
///scr_update_corners()
function scr_update_corners() {

		//Field
		var i_array;
		var corner_size = array_length_1d(corners);
	
		//Build Matrix
		var m3 = matrix_build(0, 0, 0, 0, 0, 0, image_xscale, image_yscale, 1);
		var m2 = matrix_build(0, 0, 0, 0, 0, image_angle, 1, 1, 1);
		var m1 = matrix_build(x, y, 0, 0, 0, 0, 1, 1, 1);
		matrix_stack_push(m1);
		matrix_stack_push(m2);
		matrix_stack_push(m3);
		var matrix = matrix_stack_top();
	
		//Iterate
		for (var i = 0; i < corner_size; ++i) 
		{
		    //Array get
			i_array = corners[i];
		
			//Set positions
			var new_coordinate = matrix_transform_vertex(matrix, i_array[2], i_array[3], 0);
			i_array[0] = new_coordinate[0];
			i_array[1] = new_coordinate[1];
		
			//Set
			corners[i] = i_array;
		}
	
		//Pop
		matrix_stack_pop();
		matrix_stack_pop();
		matrix_stack_pop();



}
