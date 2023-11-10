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
			if (global.ally[other.ind_ally][ind_ally] == 2)
			{
				other.ind_ad_target	= id;
			}
		}
	}
	else
	{
		var _inst	= ind_ad_target;
		with (_inst)
		{
			
		}
	}
}