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

if device_mouse_check_button(0, mb_left)
{
	vspeed = 4;
	hspeed = 4;
	direction = point_direction(x, y, mouse_x, mouse_y)
}
//Impedindo o player de sair da tela
x = clamp(x, 64, 1844);
y = clamp(y, 64, 1024);

#endregion

cria_escudo();

atirando();

show_debug_message(vida);