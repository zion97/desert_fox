///@description Update the values inside a light collider
///scr_define_corners()
function scr_define_corners() {

		//Set Up
		var hold_image_angle = image_angle;
		var hold_image_xs = image_xscale;
		var hold_image_ys = image_yscale;
		image_angle = 0;
		image_xscale = 1;
		image_yscale = 1;

		//Define corners
		uls_collider_define_shape_custom( bbox_left - x, bbox_top - y, bbox_right - x, bbox_top - y, bbox_right - x, bbox_bottom - y, bbox_left - x, bbox_bottom - y);
	
		//Get Back
		image_angle = hold_image_angle;
		image_xscale = hold_image_xs;
		image_yscale = hold_image_ys;
	
		//Update Corners
		scr_update_corners();


}
