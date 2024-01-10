// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_pl_atk_soul_check()
{
	var _list	= ds_list_create();
	var _num	= collision_rectangle_list(x-320, y-180, x+320, y+180, obj_pa_character, true, true, _list, true)
	
	if (_num == 0)
	{
		ds_list_destroy(_list);
		return;
	}
	
	var _list2	= ds_list_create();
	var _num2	= 0;
	
	
	for (var _p = 0; _p < _num; _p++)
	{
		with (_list[|_p])
		{
			if (global.ally[0][ind_ally] > 0 && ind_hp > 0)
			{
				_num2++;
				ds_list_add(_list2, _list[|_p]);
			}
		}
	}
	
	if (_num2 > 0) 
	{
		with (instance_create_depth(x, y, depth, obj_player_soul_col))
		{
			ds_list_copy(ind_list, _list2);
			ind_num	= _num2;
		}
	}
	ds_list_destroy(_list);
	ds_list_destroy(_list2);
}