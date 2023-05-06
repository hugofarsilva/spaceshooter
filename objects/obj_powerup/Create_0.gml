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
cores = choose(c_red, c_yellow, c_green);


