// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_bandit1_atk1()
{
	sprite_index	= spr_bandit01_atk;
	
	if (ind_process < 30)
	{
		image_index	= 0;
	}
	else if (ind_process < 35)
	{
		image_index	= 1;
	}
	else if (ind_process < 45)
	{
		image_index	= 1;
		speed_x		= dir * 3;
	}
	else if (ind_process < 50)
	{
		if (ind_process == 45)	sc_atk_inst(spr_bandit01_atk_ef ,10, 20);
		image_index	= 2;
	}
	else if (ind_process < 70)
	{
		image_index	= 3;
	}
	else
	{
		var _i		= irandom_range(-10, 10);
		ind_process	= ind_ad_delay + _i;
		ind_state	= 10;
		return;
	}
	
	ind_process++;
}