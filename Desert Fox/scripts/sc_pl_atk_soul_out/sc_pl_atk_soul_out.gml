// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_atk_soul_out()
{
	sprite_index	= spr_pl_soul_out;
	ind_sa			= 2;
	
	if (ind_process < 5)
	{
		image_index	= 0;
		if (ind_process == 0)
		{
			with (ind_soul_obj)
			{
				sprite_index	= spr_pl_soul_out_ef;
			}
		}
	}
	else if (ind_process < 10)
	{
		image_index	= 1;
	}
	else if (ind_process < 15)
	{
		image_index	= 2;
	}
	else if (ind_process < 20)
	{
		image_index	= 3;
	}
	else if (ind_process < 25)
	{
		image_index	= 4;
	}
	else if (ind_process < 30)
	{
		image_index	= 5;
	}
	else if (ind_process < 35)
	{
		image_index	= 6;
	}
	else if (ind_process < 40)
	{
		image_index	= 7;
	}
	else if (ind_process < 45)
	{
		image_index	= 8;
	}
	else if (ind_process < 50)
	{
		image_index	= 9;
		if (ind_process == 49)
		{
			instance_destroy(ind_soul_obj);
		}
	}
	else
	{
		//ind_state	= 10;
		//ind_process	= 0;
	}
	
	if (ind_process < 60) ind_process++;
}