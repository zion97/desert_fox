// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_ai_de1(_sc_atk)
{
	sc_ai_ad();
	if (!sc_ai_patrol())	return;
	
	if (ind_state == 0)
	{
		with (ind_ad_target)
		{
			if (x > other.x)	other.dir	= 1;
			else				other.dir	= -1;
		}
		sc_character_stand2();
		
		ind_process--;
		if (ind_process < 0)
		{
			ind_state	= 1;
			ind_process	= 0;
		}
	}
	else if (ind_state == 1)
	{
		with (ind_ad_target)
		{
			if (x > other.x)	other.dir	= 1;
			else				other.dir	= -1;
		}
		sc_character_run();
	}
}