// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_atk_soul2()
{
	sprite_index	= spr_pl_soul;
	ind_sa			= 2;
	
	if (ind_process < 6)
	{
		image_index	= 3;
	}
	else if (ind_process < 12)
	{
		image_index	= 4;
	}
	else if (ind_process < 18)
	{
		image_index	= 5;
	}
	else if (ind_process < 24)
	{
		image_index	= 6;
	}

	if (ind_process < 30)	ind_process++;
}