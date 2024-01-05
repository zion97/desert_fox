// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_pl_create()
{
	ind_hp_max		= 150;
	ind_hp			= 150;
	ind_walk_spd	= 3.0;
	ind_run_spd		= 3.0;
	ind_ally		= 0;
	
	//ind_action1_sc	= sc_pl_control;
	ind_action2_sc	= sc_pl_control;
	ind_die_sc		= sc_ai_die_7;
	
	ind_act_sc		= sc_dump;
	
	spr_stand1		= spr_pl_stand1;
	spr_stand2		= spr_pl_stand2;
	spr_walk		= spr_pl_walk;
	spr_run			= spr_pl_run;
	spr_hit			= spr_pl_hit;
	spr_die			= spr_pl_die;
	
	ind_combo		= 0;
	ind_control		= 1;
	
	ind_jump_spd	= -6;
	
	global.pl_id	= id;
	
}