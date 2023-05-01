/// @description Insert description here
// You can write your code in this editor


#region Movimentação do Player

var left, right, up, down

left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));

x += (right - left) * vel;
y += (down - up) * vel;

#endregion

#region Atirando
var fire

fire = keyboard_check_pressed(vk_space)

if (fire)
{
	instance_create_layer(x, y - sprite_height/3, "Tiros", obj_tiro_player)
}
#endregion

