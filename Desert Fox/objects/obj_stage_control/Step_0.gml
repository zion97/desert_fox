/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

global.pause	= round(global.pause);

if (global.pause > 0)
{
	global.pause--;
}

var _cam_target	= global.pl_id;
if (global.cam_mode == 1)
{
	_cam_target	= global.target_id;
}

with (_cam_target)
{
	uc_set_target_position(x, y);
}







