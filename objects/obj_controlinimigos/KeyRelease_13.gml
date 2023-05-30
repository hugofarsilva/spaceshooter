/// @description Insert description here
// You can write your code in this editor

//Reiniciar APENAS se o player já morreu
if (!sequencia)
{
	//Criando o objeto de transição com o destino da room inicial
	var _transicao = instance_create_layer(0, 0, "instances", obj_transicao);
	_transicao.destino = rm_inicio;
	
	//Checando se os pontos são a maior pontuação
	if (pontos > global.maxpontos)
	{
		global.maxpontos = pontos;
	}
}






