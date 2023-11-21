// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_soul_hit(_col)
{
	with (_col)
	{
		if (global.ally[0][ind_ally] == 0)
		{
			return false;
		}
		
		global.target_id	= id;
		global.cam_mode		= 1;
		
		ind_control			= 1;
		ind_state			= 0;
	}
	
	with (global.pl_id)
	{
		ind_action2_sc	= sc_pl_atk_soul2;
		ind_process		= 0;
		ind_control		= 1;
	}
	
	global.pause	= 0;
	return true;
}