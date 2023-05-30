/// @description Insert description here
// You can write your code in this editor

//Criando a animação de morte
layer_sequence_create("Boss_morte", x, room_height/2, sq_boss_morte);

global.totalInimigos ++;

ganhando_pontos(200);

//Checando se os pontos são a maior pontuação
	if (obj_controlinimigos.pontos > global.maxpontos)
	{
		global.maxpontos = obj_controlinimigos.pontos;
	}

