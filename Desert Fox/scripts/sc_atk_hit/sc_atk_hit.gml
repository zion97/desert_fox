// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_atk_hit(_inst)
{
	var _dmg		= atk_dmg;
	var _shock		= atk_shock;
	var _ad			= atk_ad_index;
	var _atk_inst	= atk_inst;
	var _dir		= dir;
	
	with (_inst)
	{
		ind_hp		-= _dmg;
		
		ind_stun	+= _shock * 2;
		ind_hit		+= _shock;
		
		ind_knock	= _shock/2;
		
		ind_hit_dir	= _dir * -1;
		
		if (ind_ad_index < _ad)
		{
			ind_ad_target	= _atk_inst;
			ind_ad_index	= 1200;
			ind_state		= 10;
			ind_process		= ind_ad_delay;
		}
		
		var _part	= part_system_create(p_hit_default);
		part_system_position(_part, x, (bbox_bottom+bbox_top)/2);
		if (other.dir == -1) part_system_angle(_part, 180);
	}
}