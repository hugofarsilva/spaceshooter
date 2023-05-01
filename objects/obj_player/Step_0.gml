/// @description Insert description here
// You can write your code in this editor


#region Movimentação do Player

/*
// 1º jeito de movimentar o meu player
var left, right, up, down

left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));

x += (right - left) * vel;
y += (down - up) * vel;
*/

// 2ª maneira de movimentar o player
// Movendo para a esquerda
if (keyboard_check(ord("A")))
{
	x -= vel;
}
// Movendo para a direita
if (keyboard_check(ord("D")))
{
	x += vel;
}
//Movendo para cima
if (keyboard_check(ord("W")))
{
	y -= vel;
}
//Movendo para baixo
if (keyboard_check(ord("S")))
{
	y += vel;
}
#endregion





