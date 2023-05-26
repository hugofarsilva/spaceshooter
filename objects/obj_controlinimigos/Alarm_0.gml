/// @description Criando os inimigos
// You can write your code in this editor

//Repetindo o mesmo código
//Criando os inimigos
if (!instance_exists(obj_inimigo1))
{
	if (level < 2)
	{
		var repetir = 10 * level;
		//Só criar inimigos se eu ainda não cheguei no level 10
		repeat(repetir)
		{
			cria_inimigo();
		}
	}
	else
	{
		//Criar o boss (a animação de entrada do boss)
		//Garantir que a animação só seja criada uma vez
		if (sequencia)
		{
			layer_sequence_create("Boss_entrada", 960, 576, sq_bossentrando);
			sequencia = false;
		}
	}
}


//Reiniciando o alarme
alarm[0] = room_speed * 5;





