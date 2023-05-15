/// @description Insert description here
// You can write your code in this editor

//Ficando visível em 1 segundo
//Se eu ainda não estou visível e se meu alarme ainda não rodou
if (image_alpha < 1 && !primeiro_tiro)
{
	image_alpha += 1/room_speed;
}

//Fazendo ele tornar o aumento da escala negativo se ele ficou maior que 1.5 ou menor do que 0.5
if (escala > 1.5 || escala < 1)
{
	//Invertendo o aumento da escala
	aumento_escala *= -1;
}
//Aumentando a escala pelo valor de aumento
escala += aumento_escala;
//Diminuindo a escala enquando ela for maior do que 0.5



