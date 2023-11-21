// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조

//게임 시작 시 sc_vsls_load 함수에서 함께 실행됨
function sc_vsls_input()
{
	global.key_bind		= sc_vsls_define_value("key_bind", 0);
	if (global.key_bind == 0)
	{
		global.key_bind	= array_create(4);
		global.key_bind[0]	= vk_up;
		global.key_bind[1]	= vk_down;
		global.key_bind[2]	= vk_left;
		global.key_bind[3]	= vk_right;
		global.key_bind[4]	= ord("X");
		global.key_bind[5]	= ord("C");
		global.key_bind[6]	= ord("Z");
		global.key_bind[7]	= ord("A");
		global.key_bind[8]	= ord("S");
		global.key_bind[9]	= ord("D");
		global.key_bind[10]	= ord("F");
		global.key_bind[11]	= vk_tab;
		global.key_bind[12]	= vk_escape;
		
		VSLS_Set("key_bind", global.key_bind);
	}
}