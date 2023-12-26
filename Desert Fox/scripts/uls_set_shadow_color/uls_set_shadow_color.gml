///@description set the shadow color and alpha, considering the entire light system
///@param alpha
///@param color
function uls_set_shadow_color(argument0, argument1) {

	with(obj_uls_controller)
	{
		//Getting
		var c_alpha = argument0;
		var c_color = argument1;
	
		//Setting
		array_shadow_color[3] = c_alpha;	//Alpha
		array_shadow_color[0] = color_get_red(c_color)		*0.003921568; //Red
		array_shadow_color[1] = color_get_green(c_color)	*0.003921568; //Green
		array_shadow_color[2] = color_get_blue(c_color)		*0.003921568; //Blue
	}


}
