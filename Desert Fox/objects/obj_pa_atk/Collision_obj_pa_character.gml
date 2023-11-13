/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
if (atk_hit_sum > atk_hit_num)	return;

with (other)
{
	if (global.ally[other.ind_ally][ind_ally] == 0)	return;
	if (ind_hp <= 0)	return;
	for (var _i = 0;	_i < other.atk_hit_sum;	_i++)
	{
		if (other.atk_hit_array[_i] == id)	return;
	}
	
	other.atk_hit_array[other.atk_hit_sum] = id;
	other.atk_hit_sum++;
}

sc_atk_hit(other.id);
