// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_ai_backstep()
{
	sprite_index	= spr_backstep;
	
	if (ind_process < 10)
	{
		image_index	= 0;
	}
	else if (ind_process < 15)
	{
		image_index	= 1;
		speed_x		= dir * -5;
	}
	else if (ind_process < 25)
	{
		image_index	= 2;
		speed_x		= dir * -3;
	}
	else if (ind_process < 40)
	{
		image_index	= 3;
	}
	else
	{
		ind_process	= 0;
		ind_state	= 11;
		return;
	}
	
	ind_process++;
}