// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_sig_create()
{
	ind_active	= false;
	
	var _color	= c_red;
	switch (sig)
	{
	case 0:	_color = c_red;		break;
	case 1:	_color = c_yellow;	break;
	case 2: _color = c_green;	break;
	case 3: _color = c_blue;	break;
	case 4: _color = c_purple;	break;
	case 5: _color = c_white;	break;
	case 6: _color = c_black;	break;
	}
	ind_sig_color = _color;
	
	ind_sig = false;
}

