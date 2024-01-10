/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
if (ind_active)
{
	if (ind_num > 1)
	{
		if (sc_input(2))
		{
			ind_sel--;
			if (ind_sel < 0)			ind_sel	= ind_num-1;
		}
		
		if (sc_input(3))
		{
			ind_sel++;
			if (ind_sel > ind_num-1)	ind_sel	= 0;
		}
	}
	
	
	if (sc_input(9))
	{
		alarm[0] = 25;
		with (global.pl_id)
		{
			ind_action1_sc	= sc_pl_atk_soul_out;
			ind_process		= 0;
			ind_control		= 0;
		}
	}
}









