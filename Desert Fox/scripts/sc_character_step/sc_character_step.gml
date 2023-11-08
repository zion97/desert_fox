// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_character_step()
{
	image_xscale	= dir;
	
	if (ind_hp > 0)
	{
		ind_action_sc();
	}
	else
	{
		ind_death_sc();
	}
}