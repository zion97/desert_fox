// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_ai_ad()
{
	if (ind_ad_target == noone)
	{
		var _inst	= collision_rectangle(x-ind_ad_width, y-ind_ad_height, x+ind_ad_width, y+ind_ad_height,
											obj_pa_character, true, true);
		with (_inst)
		{
			if (global.ally[other.ind_ally][ind_ally] >= 2)
			{
				other.ind_ad_target	= id;
				other.ind_ad_index	= 600;
				other.ind_state		= 0;
				other.ind_process	= ind_ad_delay;
			}
		}
	}
	else
	{
		var _inst	= ind_ad_target;
		
		with (_inst)
		{
			if (x < other.x - other.ind_ad_width*1.5 || x > other.x + other.ind_ad_width*1.5 ||
				y < other.y - other.ind_ad_height*1.5 || y > other.y + other.ind_ad_height*1.5)
			{
				other.ind_ad_index--;
			}
		}
		
		if (ind_ad_target < 0)
		{
			ind_ad_target	= noone;
			ind_ad_index	= -1;
			ind_state		= 0;
			ind_process		= ind_ad_delay;
		}
	}
}