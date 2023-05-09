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
