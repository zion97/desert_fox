/// @description Insert description here
// You can write your code in this editor
if (ind_process < 16)
{
	image_index	= 0;
	y -= (16-ind_process)/6;
	x -= dir * (16-ind_process)/10;
}
else if (ind_process < 24)
{
	image_index	= 1;
}
else if (ind_process < 32)
{
	image_index	= 2;
}
else if (ind_process < 60)
{
	x += dir * 15 * (60 - ind_process)/28;
}
else
{
	global.pause	= 0;
	instance_destroy();
}


ind_process++;
