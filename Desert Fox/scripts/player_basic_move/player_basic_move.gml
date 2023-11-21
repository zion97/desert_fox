// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_pl_stand()
{
	if (ind_state == 0)
	{
		sc_character_stand1();
	}
	else if (ind_state == 10)
	{
		sc_character_stand2();
	}
}

function sc_pl_run()
{
	if (ind_state == 0)
	{
		sc_character_walk();
	}
	else if (ind_state == 10)
	{
		sc_character_run();
	}
}

function sc_pl_set_action(_script, _process = 0)
{
	ind_state	= 20;
	ind_atk_sc	= _script;
	ind_process	= _process;
}