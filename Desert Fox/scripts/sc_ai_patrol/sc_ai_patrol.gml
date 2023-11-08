// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_ai_patrol()
{
	if (ind_ad_target != -1)	return;
	
	//var _col_index	= x + (x - bbox_left + 16)*dir;
	
	if (ind_state == 0)	
	{
		sc_character_walk();
		ind_process--;
		
		var _col_index	= x + (x - bbox_left + 16)*dir;
		if (sc_get_col(_col_index, bbox_bottom - 8) == 1 || sc_get_col(_col_index, bbox_top + 8) == 1 
			|| (sc_get_col(_col_index, bbox_bottom + 8) == 0 && !is_jump) || ind_process < 0)
		{
			ind_process	= irandom_range(60, 150);
			ind_state	= 1;
		}
	}
	else if (ind_state == 1)
	{
		sc_character_stand1();
		ind_process--;
		
		if (ind_process < 0)
		{
			dir			= dir * -1;
			ind_state	= 0;
			ind_process	= irandom_range(120, 300);
		}
	}
}