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
	ind_ad_width	= 250;			//몹 에드 너비
	ind_ad_height	= 100;			//몹 에드 높이
	ind_ad_delay	= 60;			//몹 조우 대기
	ind_hit_max		= 0;			//경직치
	ind_stun_max	= 120;			//기절치
	
	//동작 코드
	ind_action1_sc	= sc_dump;		//hp > 0일 때 동작 코드 1
	ind_die_sc		= sc_dump;		//hp < 0일 때 동작 코드
	
	ind_action2_sc	= sc_dump;
	ind_atk_sc		= sc_dump;
	
	//기본 스프라이트
	spr_stand1		= spr_dump;		//비전투 스탠딩
	spr_stand2		= spr_dump;		//전투 스탠
	spr_walk		= spr_dump;		//비전투 이동
	spr_run			= spr_dump;		//전투 이동
	spr_hit			= spr_dump;		//피격
	spr_die			= spr_dump;		//사망
	spr_backstep	= spr_dump;		//백스텝
	
	//캐릭터 정보 초기화 코드
	c_create_sc();
	
	//AI 제어용 변수
	ind_ad_target	= noone;		//공격 목표 인스턴스
	ind_ad_index	= -1;			//공격 목표 수치
	ind_process		= 0;			//프레임 변수
	ind_state		= 0;			//상태 변수
	ind_control		= 0;			//제어 상태
	ind_die			= false;		//죽었는가
	ind_hit			= 0;			//경직치
	ind_stun		= 0;			//기절치
	ind_knock		= 0;			//넉백치
	ind_hit_dir		= 1;			//넉백 방향
	ind_sa			= 0;
	can_jump		= false;
}