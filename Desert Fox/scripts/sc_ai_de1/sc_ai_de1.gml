// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_ai_de1()
{
	sc_ai_ad();
	sc_ai_patrol();
	
	//if (ind_ad_target == noone) return;
	if (ind_state == 10)
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
			with (ind_ad_target)
			{
				if (abs(x - other.x) < 50)
				{
					other.ind_state	= 13;
					other.ind_process	= 0;
				}
				else
				{
					other.ind_state	= 11;
					other.ind_process	= 0;
				}
			}
		}
	}
	else if (ind_state == 11)
	{
		with (ind_ad_target)
		{
			if (x > other.x)	other.dir	= 1;
			else				other.dir	= -1;
			
			if (abs(x - other.x) < 80)
			{
				other.ind_state	= 12;
			}
		}
		sc_character_run();
	}
	else if (ind_state == 12)
	{
		ai_de1_atk1();
	}
	else if (ind_state == 13)
	{
		sc_ai_backstep();
	}
}