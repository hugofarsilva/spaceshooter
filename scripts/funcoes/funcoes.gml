// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function screenshake(_shake)
{
	//Criando o screenshake
	var screen = instance_create_layer(0, 0, "Escudo", obj_screenshake);
	screen.shake = _shake;
	
}


//Função para ganhando_pontos(_pontos)
function ganhando_pontos(_pontos)
{
	//Checando se o control existe
	if (instance_exists(obj_controlinimigos))
	{
		obj_controlinimigos.ganha_pontos(_pontos);
	}
}


function destroi_seq()
{
	var elementos = layer_get_all_elements("Boss_entrada");
	layer_sequence_destroy(elementos[0]);
	//Criando o Boss
	instance_create_layer(960, 288, "boss", obj_boss);
}

//Criando a animação do player
function cria_seq()
{
	if (instance_exists(obj_player))
	{
		layer_sequence_create("Sequences", obj_player.x, obj_player.y, sq_level_end);
		//Destruindo o Player
		instance_destroy(obj_player, false);
	}
}