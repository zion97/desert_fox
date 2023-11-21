// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_pl_control()
{
	
	
	if (ind_state == 0 || ind_state == 10)
	{
		sc_pl_stand();
		speed_x		= 0;
		
		if (sc_input(2,1))
		{
			dir = -1;
			sc_pl_run();
		}
		if (sc_input(3,1))
		{
			dir = 1;
			sc_pl_run();
		}
		if (sc_input(5) && can_jump)
		{
			can_jump	= false;
			speed_y		= -6;
		}
		if (sc_input(7))
		{
			sc_pl_set_action(sc_pl_atk_soul);
		}
	}
	else if (ind_state == 20)
	{
		ind_atk_sc();
	}
}