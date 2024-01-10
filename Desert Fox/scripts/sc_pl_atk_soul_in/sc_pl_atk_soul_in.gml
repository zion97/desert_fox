// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_pl_atk_soul_in()
{
	sprite_index	= spr_pl_soul_in;
	ind_sa			= 2;
	speed_x			= 0;
	speed_y			= 0;
	
	if (ind_process < 4)
	{
		image_index	= 0;
		if (ind_process == 0)
		{
			ind_soul_obj = instance_create_depth(x, y, depth+50, obj_player_soul);
			with (ind_soul_obj)
			{
				dir				= other.dir;
				image_xscale	= dir;
				sprite_index	= spr_pl_soul_in_ef;
			}
			is_pause		= false;
			global.pause	= -1;
		}
	}
	else if (ind_process < 8)
	{
		image_index	= 1;
	}
	else if (ind_process < 12)
	{
		image_index	= 2;
	}
	else if (ind_process < 16)
	{
		image_index	= 3;
	}
	else if (ind_process < 20)
	{
		image_index	= 4;
	}
	else if (ind_process < 24)
	{
		image_index	= 5;
	}
	else if (ind_process < 28)
	{
		image_index	= 6;
		var _list	= ds_list_create();
		if (ind_process == 24)
		{
			sc_pl_atk_soul_check();
		}
	}
	else if (ind_process < 32)
	{
		image_index	= 7;
	}
	else if (ind_process < 36)
	{
		image_index	= 8;
	}
	else if (ind_process < 40)
	{
		image_index	= 9;
	}
	else if (ind_process < 44)
	{
		image_index	= 10;
	}
	else
	{
		if (instance_exists(obj_player_soul_col))
		{
			sc_pl_set_action(sc_pl_atk_soul_on);
		}
		else
		{
			sc_pl_set_action(sc_pl_atk_soul_cancel);
		}
		return;
	}
	ind_process++;
}