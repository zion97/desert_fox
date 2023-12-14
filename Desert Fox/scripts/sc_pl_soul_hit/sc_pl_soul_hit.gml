// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_soul_hit(_col)
{
	with (_col)
	{
		if (global.ally[0][ind_ally] == 0 || ind_hp <= 0)
		{
			return false;
		}
		
		global.target_id	= id;
		global.cam_mode		= 1;
		
		ind_control			= 1;
		ind_state			= 0;
		
		array_copy(global.ally[1], 0, global.ally[ind_ally], 0, 10);
		//global.ally[1]		= global.ally[ind_ally];
		global.ally[1][0]	= 0;
		global.ally[1][1]	= 0;
		global.ally[ind_ally][1] = 0;
		for (var _i = 2; _i < 10; _i++)
		{
			if (global.ally[1][_i] == 0)
			{
				global.ally[1][_i] = 1;
			}
		}
		ind_ally = 1;
	}
	
	with (global.pl_id)
	{
		ind_action2_sc	= sc_pl_atk_soul;
		ind_process		= 0;
		ind_control		= 1;
	}
	
	global.pause	= 0;
	return true;
}