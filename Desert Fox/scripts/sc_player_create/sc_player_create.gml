// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_player_create()
{
	ind_hp_max		= 150;
	ind_hp			= 150;
	ind_walk_spd	= 3.0;
	ind_run_spd		= 3.0;
	ind_ally		= 0;
	
	ind_action1_sc	= sc_player_control;
	ind_die_sc		= sc_ai_die_7;
	
	spr_stand1		= spr_player_stand1;
	spr_stand2		= spr_player_stand2;
	spr_walk		= spr_player_walk;
	spr_run			= spr_player_run;
	spr_hit			= spr_player_hit;
	spr_die			= spr_player_die;
	
	can_jump		= false;
}