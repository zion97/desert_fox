// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_ai_pl_control()
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
			sc_character_stand2();
			speed_x		= 0;
		}
		else
		{
			sc_character_run();
			dir = ind_move;
		}
		
		if (sc_input(5) && can_jump < ind_jump)
		{
			can_jump++;
			speed_y		= -6;
		}
		if (sc_input(4))
		{
			sc_pl_set_action(ind_atk_sc);
		}
		if (sc_input(9))
		{
			sc_ai_soul_back();
		}
	}
	else if (ind_state == 20)
	{
		ind_act_sc();
	}
}