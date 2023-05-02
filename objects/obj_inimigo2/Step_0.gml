/// @description Insert description here
// You can write your code in this editor


// Inherit the parent event
event_inherited();

//Checando se eu já passei de 1/3 da tela
if (y > room_height/3 and posso_me_mover_para_lado == true)
{
	//Checando de que lado da room eu estou
	if (x > room_width/2)
	{
		//Fazedo eu ir para a esquerda
		hspeed = -3;
		posso_me_mover_para_lado = false;
	}
	else
	{
		//Fazendo eu ir para a direita
		hspeed = 3;
		posso_me_mover_para_lado = false;
	}
}