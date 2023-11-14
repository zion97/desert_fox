// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_input(_key_index, _mode = 0)
{
	if (_mode == 0)
	{
		if (keyboard_check_pressed(global.key_bind[_key_index]))
		{
			return true;
		}
		/*
		if (global.key[_key_index] == 1)
		{
			return true;
		}
		*/
	}
	else if (_mode == 1)
	{
		if (keyboard_check(global.key_bind[_key_index]))
		{
			return true;
		}
		/*
		if (global.key[_key_index] > 0)
		{
			return true;
		}
		*/
	}
	
	return false;
}