/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
if (!ind_sig && image_index == 0)
{
	draw_sprite(spr_ter_cage01_h, 0, x, y);
}

draw_set_color(ind_sig_color);
draw_rectangle(x-11, y-64, x+10, y-62, false);