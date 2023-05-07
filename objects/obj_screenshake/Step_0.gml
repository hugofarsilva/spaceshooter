/// @description Insert description here
// You can write your code in this editor

//Movendo a tela
view_xport[0] = random_range(-shake, shake);
view_yport[0] = random_range(-shake, shake);

//Diminuindo o valor do screenshake
//Multiplicando por 0.95 ele perde 5% por step
shake *= 0.97;

//Se o valor do shake for menor do que 0.5 ele se destroi

if (shake < 0.5)
{
	instance_destroy();
}
