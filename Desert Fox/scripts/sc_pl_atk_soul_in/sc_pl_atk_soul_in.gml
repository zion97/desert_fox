// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_atk_soul_in()
{
	sprite_index	= spr_pl_soul_in;
	
	if (ind_process < 5)
	{
		image_index	= 0;
	}
	else if (ind_process < 10)
	{
		image_index	= 1;
	}
	else if (ind_process < 10)
	{
		image_index	= 2;
	}
	else if (ind_process < 10)
	{
		image_index	= 3;
	}
	else if (ind_process < 10)
	{
		image_index	= 4;
	}
	else if (ind_process < 10)
	{
		image_index	= 5;
	}
	else if (ind_process < 10)
	{
		image_index	= 6;
	}
	else if (ind_process < 10)
	{
		image_index	= 1;
	}else if (ind_process < 10)
	{
		image_index	= 1;
	}
	else if (ind_process < 15)
	{
		image_index	= 2;
		if (ind_process == 18)
		{
			with (instance_create_depth(x, y-25, depth+50, obj_player_soul))
			{
				dir				= other.dir;
				image_xscale	= dir;
			}
			is_pause		= false;
			global.pause	= -1;
		}
	}
	else
	{
		ind_state	= 10;
		ind_process	= 0;
	}
	ind_process++;
}