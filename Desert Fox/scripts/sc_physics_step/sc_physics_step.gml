// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_physics_step()
{
	image_xscale	= dir;
	
	//증력 적용
	if (speed_y < 5)	speed_y += grav_index;
	
	//오브젝트와 바닥 충돌
	if ( sc_get_col(x, bbox_bottom) == 1) 
	{
		is_jump = false;
	}
	else 
	{
		is_jump = true;
	}

	
	

	
	//점프중이 아닐 때 정지
	if (!is_jump)	
	{
		speed_x = 0;
	}
}