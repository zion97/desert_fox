// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_pl_atk_soul_check()
{
	var _list	= ds_list_create();
	if (collision_rectangle_list(x-32, y-18, x+32, y+18, obj_pa_character, true, true, _list, true) == 0)
	{
		return false;
	}

	return true;
}