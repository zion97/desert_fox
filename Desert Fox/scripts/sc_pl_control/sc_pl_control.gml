// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_pl_control()
{
	if (ind_state == 0 || ind_state == 10)
	{
		
		if (sc_input(2,1) && sc_input(3,1))
		{
			if (sc_input(2))
			{
				ind_move = -1;
			}
			if (sc_input(3))
			{
				ind_move = 1;
			}
		}
		else if (sc_input(2,1) && !sc_input(3,1))
		{
			ind_move = -1;	
		}
		else if (!sc_input(2,1) && sc_input(3,1))
		{
			ind_move = 1;
		}
		else
		{
			ind_move	= 0;
		}
		
		
		if (ind_move == 0)
		{
			sc_pl_stand();
			speed_x		= 0;
		}
		else
		{
			sc_pl_run();
			dir = ind_move;
		}
		
		if (sc_input(4))
		{
			if (sc_input(0, 1))
			{
				sc_pl_set_action(sc_pl_atk_up);
			}
			else
			{
				sc_pl_set_action(sc_pl_atk);
			}
		}
		if (sc_input(5) && can_jump < ind_jump)
		{
			can_jump++;
			speed_y		= ind_jump_spd;
		}
		if (sc_input(9))
		{
			sc_pl_set_action(sc_pl_atk_soul_in);
		}
	}
	else if (ind_state == 20)
	{
		ind_act_sc();
	}
}