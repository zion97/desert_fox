// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_atk_soul_on()
{
	sprite_index	= spr_pl_soul_on;
	ind_sa			= 2;
	speed_x			= 0;
	speed_y			= 0;
	
	if (ind_process == 0)
	{
		with (obj_player_soul)
		{
			sprite_index	= spr_pl_soul_on_ef;
		}
		ind_process++;
	}
}