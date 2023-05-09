/// @description Insert description here
// You can write your code in this editor

#region Variáveis

//Velocidade - 0.5			- Limite = 10 //45%
//Espera tiro - 10%			- Limite = 20 //45%
//Level tiro - 1			- Limite = 5  //10%

vel = 5;
espera_tiro = room_speed;
level_tiro = obj_controlinimigos.level;
vida = 3;
escudo = 3;
meu_escudo = noone;
#endregion

#region Atirando

atirando = function()
{
	var fire = keyboard_check(vk_space)
	var y_tiro = y - sprite_height/3;

	if (fire and !alarm[0])
	{
		alarm[0] = espera_tiro;
		
		//Tiro do level 1
		if (level_tiro == 1)
		{
			
			instance_create_layer(x, y_tiro, "Tiros", obj_tiro_player);
		}
		//Tiro do level 2
		else if (level_tiro == 2)
		{
			tiro2();
		}
		//Tiro do level 3
		else if (level_tiro == 3)
		{
			
			instance_create_layer(x, y_tiro, "Tiros", obj_tiro_player);
			tiro2();
			
		}
		
		//Tiro do level 4
		else if (level_tiro == 4)
		{
			
			tiro4();
		}
		
		//Tiro do level 5
		else if (level_tiro == 5)
		{
			tiro2();
			tiro4();
		}
	}
}

//Método tiro 2
tiro2 = function()
{
	var y_tiro = y - sprite_height/3;
	var tiro_1 = instance_create_layer(x - 60, y_tiro, "Tiros", obj_tiro2_player);
	//Fazendo o tiro 1 ir para a esquerda
	tiro_1.hspeed = -5;
			
	//Fazendo o tiro 2 ira para a direita
	var tiro_2 = instance_create_layer(x + 60, y_tiro, "Tiros", obj_tiro2_player);
	tiro_2.hspeed = 5;
}

//Método tiro 4
tiro4 = function()
{
	var y_tiro = y - sprite_height/3;
	var direcao = 75;
	repeat(3)
	{
		var meu_tiro = instance_create_layer(x, y_tiro + 10, "Tiros", obj_tiro_player);
		//Fazendo o tiro ir para a direita
		meu_tiro.direction = direcao;
		//Fazendo o meu tiro olhar para a direção que ele está indo
		meu_tiro.image_angle = meu_tiro.direction - 90;
			
		//Aumentar o valor da direcao
		direcao += 15;
	}
}
#endregion

///@method level_up(chance)
level_up = function(_chance)
{
	if (_chance >= 90)
	{
		//Aumentando o level do tiro SE o level do tiro for menor do que 5
		if (level_tiro < 5)
		{
			level_tiro++;
		}
		//Se chegou no máximo eu ganho pontos
		else
		{
			ganhando_pontos(100);
		}
	}
	
	else if (_chance >= 45)
	{
		if (vel < 10)
		{
			//Aumentando a velocidade
			vel += .5; 
		}
		else
		{
			ganhando_pontos(10);
		}
	}
	else if (_chance < 45)
	{
		if (espera_tiro >= 15)
		{
			//Diminuindo a espera do tiro em 10%
			espera_tiro *= 0.9;
		}
		else
		{
			ganhando_pontos(10);
		}
	}
}

///@method perde_vida()
perde_vida = function()
{
	//Só vou perder vida se o meu_escudo é noone
	if (!meu_escudo)
	{
		if (vida > 0)
		{
			vida --;
			screenshake(5);
		}
		else
		{
			instance_destroy();
			screenshake(15);
		}
	}
}

cria_escudo = function()
{
	//Criando o escudo
	if (keyboard_check_pressed(ord("E")))
	{
		if (!meu_escudo and escudo > 0)
		{
			var _escudo = instance_create_layer(x, y, "Escudo", obj_escudo);
			//Eu sou o alvo do escudo
			_escudo.alvo = id;
			//Avisando que esse escudo é meu
			meu_escudo = _escudo;
			escudo--;
		}
	}
}




