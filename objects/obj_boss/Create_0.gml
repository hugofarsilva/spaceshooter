/// @description Insert description here
// You can write your code in this editor



estado_atual = choose("estado1", "estado2", "estado3");

#region Variáveis

delay_tiro = room_speed/1.5;
espera_tiro = 0;
delay_estado = room_speed * 8;
espera_estado = delay_estado;
velocidade_horizontal = 3;
vida_max = 1500;
vida_atual = 1;
carregando = true;
criar_minions = true;
#endregion

//Método para o tiro 1
///@method tiro01(true_direita_false_esquerda)
tiro01 = function(_direita)
{
	if (_direita)
	{
		var _posx = 160;
	}
	else
	{
		var _posx = -160;
	}
	
	instance_create_layer(x + _posx, y + 77, "Tiros", obj_tiro_inimigo1);
}

//Método para o tiro2
tiro02 = function()
{
	instance_create_layer(x, sprite_height - 25, "Tiros", obj_tiro_inimigo2);
}

//Método para troca de estados
troca_estado = function()
{
	//Diminuindo a espera do estado
	espera_estado--;
	if (espera_estado <= 0)
	{
		//Vou escolher outro estado SE minha vida não for menor do que metade
		if (vida_atual > vida_max / 2)
		{
			estado_atual = choose("estado1", "estado2", "estado3");
		}
		else //Estou com metade ou menos da minha vida máxima
		{
			estado_atual = choose("estado1", "estado2", "estado3", "estado4");
		}
		espera_estado = delay_estado;
		//Pode criar minions
		criar_minions = true;
	}
}

estado_01 = function()
{
	//Diminuindo o valor da espera do tiro
	espera_tiro--;
	//Criando o tiro SE a espera do tiro for menor ou igual a 0
	if (espera_tiro <= 0)
	{
		tiro02();
		espera_tiro = delay_tiro;
	}
}

estado_02 = function()
{
	//Indo para a direita
	x += velocidade_horizontal;
	//Invertendo a velocidade horizontal
	if (x >= 1634 || x <= 288)
	{
		velocidade_horizontal *= -1;
	}
	espera_tiro--;
	if (espera_tiro <= 0)
	{
		tiro01(false);
		tiro01(true);
		espera_tiro = delay_tiro * 2;
	}
}

estado_03 = function()
{
	//Diminuindo o valor da espera do tiro
	espera_tiro--;
	//Criando o tiro SE a espera do tiro for menor ou igual a 0
	if (espera_tiro <= 0)
	{
		tiro02();
		espera_tiro = delay_tiro * 2;
	}
	if (espera_tiro == delay_tiro)
	{
		tiro01(false);
	}
	if (espera_tiro == delay_tiro + round(delay_tiro/2))
	{
		tiro01(true);
	}
}

estado_04 = function()
{
	//Trocando a spite do boss
	sprite_index = spr_boss_surgindo;
	
	//Indo para o meio da tela
	x += sign(room_width / 2 - x);
	
	//Criando os Minions SE eu posso criar minions
	if (criar_minions)
	{
		//Esquerda
		var _minion = instance_create_layer(128, 672, "inimigos", obj_bossminion);
		_minion.image_angle = 90;
		//Direita
		_minion = instance_create_layer(1760, 672, "inimigos", obj_bossminion);
		_minion.image_angle = -90;
		
		//Já criei os minions, não posso criar mais
		criar_minions = false;
	}
}