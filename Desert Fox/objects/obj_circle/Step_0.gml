/// @description Scale and Move
	
	//Move around
	x = xstart + cos(current_time * 0.001) * 20;
	
	//Define scale
	var scale = 0.9 + 0.1*(cos(current_time * 0.002));
	uls_collider_set_scale( self, scale, scale);