// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_pl_stand()
{
	if (is_jump)
	{
		sc_pl_jump();
	}
	else
	{
		if (ind_state == 0)
		{
			sprite_index	= spr_stand1;
		}
		else if (ind_state == 10)
		{
			sprite_index	= spr_stand2
		}
	}
}

function sc_pl_run()
{
	if (is_jump)
	{
		sc_pl_jump();
	}
	else
	{
		if (ind_state == 0)
		{
			sprite_index	= spr_walk;
		}
		else if (ind_state == 10)
		{
			sprite_index	= spr_run;
		}
	}
	
	speed_x			= dir * ind_run_spd;
}

function sc_pl_jump()
{
	var _jump		= clamp(round((speed_y - ind_jump_spd - 4)), 0, 4);
		
	sprite_index	= spr_pl_jump;
	image_index		= _jump
}

function sc_pl_set_action(_script, _process = 0)
{
	ind_state	= 20;
	ind_act_sc	= _script;
	ind_process	= _process;
}