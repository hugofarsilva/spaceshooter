/// @description Insert description here
// You can write your code in this editor

randomize();
//Criando uma chance entre 0 e 100 pra ele decidir qual vai ser o upgrade
chance = random(100);
//Se o valor da chance for 90 ou mais ela cria o powerup do level do tiro
//Se o valor da chance for 45 ou mais cria o powerup da velocidade
//Senão cria o powerup da espera do tiro

speed = 2;
direction = irandom(359);

//Iniciando o Alarme para sumir o powerup
alarm[0] = room_speed;

//Dependendo da chance eu mudo de cor
if (chance >= 90)
{
	cor = c_maroon;
}
else if (chance > 45)
{
	cor = c_yellow;
}
else
{
	cor = c_aqua;
}

