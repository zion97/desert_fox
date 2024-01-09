// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_atk_soul_cancel()
{
	sprite_index	= spr_pl_soul_cancel;
	ind_sa			= 2;
	speed_x			= 0;
	speed_y			= 0;
	
	if (ind_process < 5)
	{
		image_index	= 0;
		if (ind_process == 0)
		{
			with (ind_soul_obj)
			{
				sprite_index	= spr_pl_soul_cancel_ef;
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
	else
	{
		instance_destroy(ind_soul_obj);
		global.pause	= 0;
		is_pause		= true;
		ind_state		= 10;
		ind_process		= 0;
	}
	ind_process++;
}