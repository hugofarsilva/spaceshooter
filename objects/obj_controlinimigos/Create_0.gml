/// @description Iniciando
// You can write your code in this editor

randomize();
alarm[0] = room_speed;

//Iniciando o sistema de pontos
pontos = 0;

//Iniciando o sistema de levels
level = 1;

//Quantos pontos eu preciso para o próximo level
proximo_level = 100;

//Criando um método para ganhar pontos
///@method ganha_pontos(pontos)
ganha_pontos = function(_pontos)
{
	pontos += _pontos;
	//Ganhando level SE os meus pontos forem maior que proximo_level
	if (pontos > proximo_level)
	{
		level ++;
		proximo_level *= 2;
	}
}





