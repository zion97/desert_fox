// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_ai_pl_control()
{
	if (ind_state == 0 || ind_state == 10)
	{
		sc_character_stand2();
		speed_x		= 0;
		
		if (sc_input(2,1))
		{
			dir = -1;
			sc_character_run();
		}
		if (sc_input(3,1))
		{
			dir = 1;
			sc_character_run();
		}
		if (sc_input(5) && can_jump)
		{
			can_jump	= false;
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