// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_atk_inst(_spr, _dmg, _shock, _hit_num = 4, _ad_index = 600, _obj = obj_pa_atk)
{
	with (instance_create_depth(x, y, depth-50, _obj))
	{
		sprite_index	= _spr;
		dir				= other.dir;
		image_xscale	= dir;
		atk_dmg			= _dmg;
		atk_hit_num		= _hit_num;
		atk_shock		= _shock;
		atk_ad_index	= _ad_index;
		
		atk_inst		= other.id;
		ind_ally		= other.ind_ally;
		
		return id;
	}
}