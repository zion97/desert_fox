/// @description Insert description here
// You can write your code in this editor
mx += (mouse_x - x) * 0.1;
my += (mouse_y - y) * 0.1;
x = round(mx);
y = round(my);

// Inherit the parent event
event_inherited();

