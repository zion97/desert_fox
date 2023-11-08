// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_vsls_load()
{
	VSLS_File_Load(global.save_file);
	/*
	global.index_clear	= sc_vsls_define_value("index_clear", 0);
	
	//global.mobile_dir	= sc_vsls_define_value("mobile_dir", 0);
	global.mobile_dir	= 0;
	
	global.key_bind		= sc_vsls_define_value("key_bind", 0);
	if (global.key_bind == 0)
	{
		global.key_bind	= array_create(4);
		global.key_bind[0]	= vk_left;
		global.key_bind[1]	= vk_right;
		global.key_bind[2]	= ord("C");
		global.key_bind[3]	= ord("X");
		
		VSLS_Set("key_bind", global.key_bind);
	}
	*/
	VSLS_File_Save(global.save_file);
}