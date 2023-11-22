// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_character_step()
{
	image_xscale	= dir;
	ind_sa			= 0;
	if (!is_jump)
	{
		can_jump	= 0;
	}
	
	if (ind_hp > 0)
	{
		if (ind_stun > 0)	ind_stun--;
		sc_ai_hit();
		
		if (ind_control == 0)
		{
			ind_action1_sc();
		}
		else if (ind_control == 1)
		{
			ind_action2_sc();
		}
	}
	else
	{
		if (!ind_die)
		{
			ind_process	= 0;
			ind_state	= -1;
			ind_die		= true;
			speed_x		= 0;
		}
		ind_die_sc();
	}
}