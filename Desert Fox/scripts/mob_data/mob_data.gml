// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_mob_bandit01_data()
{
	ind_hp_max		= 80;
	ind_hp			= 80;
	ind_walk_spd	= 1.5;
	ind_run_spd		= 3.0;
	ind_ally		= 3;
	
	ind_action1_sc	= sc_ai_de1;
	ind_atk_sc		= sc_bandit1_atk1;
	
	ind_action2_sc	= sc_ai_pl_control;
	ind_die_sc		= sc_ai_die_4;
	ind_die_set_sc	= sc_mob_die_set;
	
	spr_stand1		= spr_bandit01_stand1;
	spr_stand2		= spr_bandit01_stand2;
	spr_walk		= spr_bandit01_walk;
	spr_run			= spr_bandit01_run;
	spr_hit			= spr_bandit01_hit;
	spr_die			= spr_bandit01_die;
	spr_backstep	= spr_bandit01_backstep;
}


function sc_mob_ev_knight01_data()
{
	ind_hp_max		= 80;
	ind_hp			= 80;
	ind_walk_spd	= 1.5;
	ind_run_spd		= 3.0;
	ind_ally		= 4;
	
	ind_action1_sc	= sc_ai_de1;
	ind_atk_sc		= sc_bandit1_atk1;
	
	ind_action2_sc	= sc_ai_pl_control;
	ind_die_sc		= sc_ai_die_4;
	ind_die_set_sc	= sc_mob_die_set;
	
	spr_stand1		= spr_ev_knight01_stand1;
	spr_stand2		= spr_ev_knight01_stand2;
	spr_walk		= spr_ev_knight01_walk;
	spr_run			= spr_ev_knight01_run;
	spr_hit			= spr_bandit01_hit;
	spr_die			= spr_bandit01_die;
	spr_backstep	= spr_bandit01_backstep;
}