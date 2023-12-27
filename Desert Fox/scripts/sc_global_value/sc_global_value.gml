// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_global_value()
{
	global.save_file	= "saveFile";
	
	global.pause		= 0;
	
	global.cam_mode		= 0;
	global.pl_id		= noone;
	global.target_id	= noone;
	
	global.sig			= array_create(10, false);
	
	sc_ally_set();
}