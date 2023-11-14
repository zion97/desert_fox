// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_player_stand()
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

function sc_player_run()
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