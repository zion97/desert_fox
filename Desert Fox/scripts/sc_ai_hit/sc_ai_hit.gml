// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_ai_hit()
{
	if (ind_knock > 0)
	{
		speed_x	= dir * -5;
		if (ind_knock < 5)	speed_x	= dir * ind_knock * -1;
		ind_knock = round(ind_knock) -1;
	}
	
	if (ind_hit > ind_hit_max)
	{
		sprite_index	= spr_hit;
		ind_state		= -2;
	}
	
	if (ind_state == -2)
	{
		if (ind_hit <= ind_hit_max)
		{
			ind_state	= 10;
			ind_process	= ind_ad_delay;
		}
	}
	if (ind_hit > ind_hit_max) ind_hit -= 2;
	if (ind_hit > 0) ind_hit--;
}