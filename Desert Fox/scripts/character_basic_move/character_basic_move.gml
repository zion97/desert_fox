// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_character_stand1()
{
	sprite_index	= spr_stand1;
}

function sc_character_stand2()
{
	sprite_index	= spr_stand2
}

function sc_character_walk()
{
	sprite_index	= spr_walk;
	
	speed_x			= dir * ind_walk_spd;
}

function sc_character_run()
{
	sprite_index	= spr_run;
	
	speed_x			= dir * ind_run_spd;
}