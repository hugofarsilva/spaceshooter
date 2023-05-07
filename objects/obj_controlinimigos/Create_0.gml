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

sequencia = true;
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

//Criando o método para gerar inimigos
cria_inimigo = function()
{
	//Definindo a posição X e Y do meu inimigo
	var _x = irandom_range(50, room_width - 50);
	//Aumentando o limite com base no level do jogo
	var _y = irandom_range(-100, -1500 - level * 800)

	//Criando o inimigo com base no level
	//A chance de criar um inimigo mais forte depende do level
	var chance = random_range(0, level);
	//Definindo qual inimigo criar
	var inimigo = obj_inimigo1;
	//Se o valor da chance for maior do que 2 crio o inimigo 2
	if (chance > 2)
	{
		inimigo = obj_inimigo2;
	}
	//Criando o inimigo na posição definida
	instance_create_layer(_x, _y, "Inimigos", inimigo);
}





