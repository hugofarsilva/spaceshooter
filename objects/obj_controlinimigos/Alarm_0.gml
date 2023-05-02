/// @description Criando os inimigos
// You can write your code in this editor

//Repetindo o mesmo código
//Criando os inimigos
if (!instance_exists(obj_inimigo1))
{
	var repetir = 10 * level;
	repeat(repetir)
	{
		cria_inimigo();
	}
}


//Reiniciando o alarme
alarm[0] = room_speed * 5;





