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
			if (global.ally[other.ind_ally][ind_ally] >= 2 && ind_hp > 0)
			{
				other.ind_ad_target	= id;
				other.ind_ad_index	= 1200;
				other.ind_state		= 10;
				other.ind_process	= ind_ad_delay;
				if (alarm[0] > 0)	alarm[0]	= -1;
			}
		}
	}
	else
	{
		var _inst	= ind_ad_target;
		
		with (_inst)
		{
			if (x < other.x - other.ind_ad_width || x > other.x + other.ind_ad_width ||
				y < other.y - other.ind_ad_height || y > other.y + other.ind_ad_height)
			{
				other.ind_ad_index--;
			}
			if (other.ind_ad_index > 300)
			{
				other.ind_ad_index--;
			}
			if (ind_hp <= 0)
			{
				other.ind_ad_index = -1;
			}
		}
		if (ind_ad_index < 0)
		{
			if (!(alarm[0] > 0))	alarm[0]	= ind_ad_delay/2;
			ind_ad_target	= noone;
			ind_ad_index	= -1;
			//ind_state		= 0;
			//ind_process		= ind_ad_delay;
		}
	}
	
}