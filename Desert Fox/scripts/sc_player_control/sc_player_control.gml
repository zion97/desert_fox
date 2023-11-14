// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_player_control()
{
	if (!is_jump)
	{
		can_jump	= true;
	}
	
	if (ind_state == 0 || ind_state == 10)
	{
		sc_player_stand();
		
		if (sc_input(2,1))
		{
			dir = -1;
			sc_player_run();
		}
		if (sc_input(3,1))
		{
			dir = 1;
			sc_player_run();
		}
		if (sc_input(5,1) && can_jump)
		{
			
		}
	}
}