// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_ai_soul_back()
{
	ind_hp				= 0;
	global.cam_mode		= 0;
	
	with (global.pl_id)
	{
		ind_control		= 1;
		sc_pl_set_action(sc_pl_atk_soul_end)
	}
}