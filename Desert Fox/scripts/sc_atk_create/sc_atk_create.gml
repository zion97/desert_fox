// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_atk_create()
{
	atk_dmg			= 0;
	atk_hit_num		= 4;
	atk_shock		= 0;
	
	atk_hit_sum		= 0;
	atk_hit_array	= array_create(10, noone);
}