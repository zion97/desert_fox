// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_vsls_define_value(_value_name, _value)
{
	if (!VSLS_Exists(_value_name))
	{
		VSLS_Set(_value_name, _value);
	}
	return VSLS_Get(_value_name);
}

function sc_vsls_save_value(_value_name, _value)
{
	VSLS_Set(_value_name, _value);
	VSLS_File_Save(global.save_file);
}