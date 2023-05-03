/// @description Insert description here
// You can write your code in this editor


#region Movimentação do Player

var left, right, up, down

left = keyboard_check(vk_left);
right = keyboard_check(vk_right);
up = keyboard_check(vk_up);
down = keyboard_check(vk_down);

x += (right - left) * vel;
y += (down - up) * vel;

#endregion

atirando();

