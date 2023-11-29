// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_pl_atk()
{
	sprite_index	= spr_pl_atk;
	ind_sa			= 2;
	sc_pl_combo_input();
	
	if (ind_process < 8)
	{
		image_index	= 0;
		speed_x		= 3*dir;
	}
	else if (ind_process < 16)
	{
		image_index	= 1;
		speed_x		= 3*dir;
	}
	else if (ind_process < 24)
	{
		image_index	= 2;
		if (ind_process == 16)	sc_atk_inst(spr_pl_atk_ef1 ,20, 20);
	}
	else if (ind_process < 32)
	{
		image_index	= 3;
		if (ind_combo	== 4)
		{
			ind_combo	= 0;
			ind_process	= 40;
		}
	}
	else if (ind_process < 36)
	{
		ind_process	= 0;
		ind_state	= 10;
		return;
	}
	else if (ind_process < 48)
	{
		image_index	= 0;
		speed_x		= 3*dir;
	}
	else if (ind_process < 56)
	{
		image_index	= 1;
		speed_x		= 3*dir;
	}
	else if (ind_process < 64)
	{
		image_index	= 2;
		if (ind_process == 56)	sc_atk_inst(spr_pl_atk_ef1 ,20, 20);
	}
	else if (ind_process < 72)
	{
		image_index	= 3;
		if (ind_combo	== 4)
		{
			ind_combo	= 0;
			ind_process	= 80;
		}
	}
	else if (ind_process < 76)
	{
		ind_process	= 0;
		ind_state	= 10;
		return;
	}
	else if (ind_process < 88)
	{
		image_index	= 0;
		speed_x		= 3*dir;
	}
	else if (ind_process < 96)
	{
		image_index	= 1;
		speed_x		= 3*dir;
	}
	else if (ind_process < 104)
	{
		image_index	= 2;
		if (ind_process == 96)	sc_atk_inst(spr_pl_atk_ef1 ,20, 20);
	}
	else if (ind_process < 112)
	{
		image_index	= 3;
	}
	else if (ind_process < 116)
	{
		ind_process	= 0;
		ind_state	= 10;
		return;
	}

	ind_process++;
}

function sc_pl_atk_up()
{
	sprite_index	= spr_pl_atk_up;
	ind_sa			= 2;
	sc_pl_combo_input();
	
	if (ind_process < 6)
	{
		image_index	= 0;
	}
	else if (ind_process < 12)
	{
		image_index	= 1;
		if (ind_process == 6)	
		{
			sc_atk_inst(spr_pl_atk_up_ef ,20, 20);
		}
	}
	else if (ind_process < 18)
	{
		image_index	= 2;
		if (ind_process == 12)	
		{
			speed_y	= -6;
		}
	}
	else if (ind_process < 24)
	{
		image_index	= 3;
	}
	else if (ind_process < 40)
	{
		image_index	= 3;
		if (ind_combo	== 4)
		{
			
		}
	}
	else
	{
		ind_process	= 0;
		ind_state	= 10;
		return;
	}

	ind_process++;
}

function sc_pl_combo_input()
{
	if (sc_input(4))
	{
		ind_combo	= 4;
	}
}