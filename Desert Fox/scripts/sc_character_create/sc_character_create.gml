// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_character_create()
{
	//기본 정보 변수
	ind_hp_max		= 10;			//최대 체력
	ind_hp			= 10;			//체력
	ind_walk_spd	= 1.5;			//걷기 속도
	ind_run_spd		= 3.0;			//달리기 속도
	ind_ally		= 1;			//피아식별 변수
	ind_ad_width	= 100;			//몹 에드 너비
	ind_ad_height	= 50;			//몹 에드 높이
	
	//동작 코드
	ind_action_sc	= sc_dump;		//hp > 0일 때 동작 코드
	ind_death_sc	= sc_dump;		//hp < 0일 때 동작 코드
	
	//기본 스프라이트
	spr_stand1		= spr_dump;		//비전투 스탠딩
	spr_stand2		= spr_dump;		//전투 스탠
	spr_walk		= spr_dump;		//비전투 이동
	spr_run			= spr_dump;		//전투 이동
	spr_death		= spr_dump;		//사망
	
	//캐릭터 정보 초기화 코드
	c_create_sc();
	
	//AI 제어용 변수
	ind_ad_target	= noone;		//공격 목표 인스턴스
	ind_ad_index	= -1;			//공격 목표 수치
	ind_process		= 0;			//프레임 변수
	ind_state		= 0;			//상태 변수
}