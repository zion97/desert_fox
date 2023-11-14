// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_ai_die_7()
{
	sprite_index = spr_die;
	
	if ( ind_process < 8 ) 
	{ 
		image_index	= 0; 
		speed_x		= dir * -6; 
		
	}
	else if ( ind_process < 16 ) 
	{ 
		image_index	= 1; 
		speed_x		= dir * -5; 
	}
	else if ( ind_process < 24 ) 
	{ 
		image_index = 2; 
		speed_x		= dir * -4; 
	}
	else if ( ind_process < 32 ) 
	{ 
		image_index	= 3; 
		speed_x		= dir * -3; 
	}
	else if ( ind_process < 40 ) 
	{ 
		image_index = 4; 
		speed_x		= dir * -2; 
	}
	else if ( ind_process < 48 ) 
	{ 
		image_index = 5; 
		speed_x		= dir * -1; 
	}
	else if (!is_jump) 
	{ 
		image_index = 6; 
		speed_x		= 0; 
	}
	
	if ( ind_process < 60 ) ind_process++;
}