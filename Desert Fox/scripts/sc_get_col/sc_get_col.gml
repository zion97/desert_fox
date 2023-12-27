// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function sc_get_col(_x, _y)
{
	var _tile_id	= layer_tilemap_get_id("tile_sprite");
	var _tile_col	= tilemap_get_at_pixel(_tile_id, _x, _y);

	if (_tile_col > 0 && _tile_col <= 180)
	{
		return 1;
	}

	if (collision_point(_x, _y, obj_pa_obstacle, true, true))
	{
		return 1;
	}
	
	if (ind_col_half && collision_point(_x, _y, obj_pa_obstacle_half, true, true))
	{
		return 1;
	}
	
	return 0;
}