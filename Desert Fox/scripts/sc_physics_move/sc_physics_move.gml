// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_physics_move()
{
	if ( !is_jump && speed_y > 0 ) {
		speed_y = 0;
		if ( is_tile && bbox_bottom % 16 > 0 ) y -= bbox_bottom % 16;
	}
	is_tile = true;
	//오브젝트와 천장 충돌
	if ( sc_get_col(x, bbox_top) == 1 ) { if ( speed_y < 0 ) speed_y = 2; }
	
	
	//좌우 충돌
	if ( ( sc_get_col(bbox_left, bbox_bottom - 8) == 1 || sc_get_col(bbox_left, bbox_top + 8) == 1) )		
	{ 
		if ( speed_x < 0 ) speed_x = 0;
	}
	if ( ( sc_get_col(bbox_right, bbox_bottom - 8) == 1 || sc_get_col(bbox_right, bbox_top + 8) == 1 ) )	
	{ 
		if ( speed_x > 0 ) speed_x = 0; 
	}
	
	//실제 좌표 이동
	x += speed_x;
	y += speed_y;
}