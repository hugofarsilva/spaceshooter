/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

//Mudando a direção depois que eu me movi X pixels
//Achar uma forma de ver qual era a minha posição inicial
//Checando se eu me movi 50px para a direita
//Checando se a minha posição inicial é maior do que a posição inicial + 50
//Checando se eu me movi 50px para a esquerda
//Checando se a minha posição inicial é menor do que a posição inicial - 50
if (x > xstart + 50 || x < xstart - 50)
{
	//Eu devo inverter a minha velocidade horizontal
	hspeed *= -1;
}
 
