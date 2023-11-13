// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_ally_set()
{
	//피아식별용 2차원 배열, 앞열엔 본인, 뒷열엔 다른 세력과의 관계
	//0 = 플레이어,	1 = 꼭두각시,	2 = 마을,		3 = 몬스터,		4 = 몬스터 2
	//0 = 동맹,		1 = 중립,		2 = 일시 적대,	3 = 영구 적대
	global.ally			= array_create(10);
	for (var _i = 0; _i < 10; _i++)
	{
		global.ally[_i]	= array_create(10, 0);
	}
	global.ally[0][0]	= 0;
	global.ally[0][1]	= 0;
	global.ally[0][2]	= 3;
	global.ally[0][3]	= 3;
	
	global.ally[3][0]	= 3;
	global.ally[3][1]	= 3;
	global.ally[3][2]	= 0;
	global.ally[3][3]	= 0;
	global.ally[3][4]	= 3;
	
	global.ally[4][0]	= 3;
	global.ally[4][1]	= 3;
	global.ally[4][2]	= 0;
	global.ally[4][3]	= 3;
	global.ally[4][4]	= 0;
}