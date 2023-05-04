/// @description Insert description here
// You can write your code in this editor

#region Variáveis

vel = 4;
espera_tiro = room_speed;
level_tiro = 1;


#endregion

#region Atirando

atirando = function()
{
	var fire = keyboard_check(vk_space)
	
	var _y_tiro = y - sprite_height/3;

	if (fire and !alarm[0])
	{
		alarm[0] = espera_tiro;
		
		//Tiro do level 1
		if (level_tiro == 1)
		{
			instance_create_layer(x, _y_tiro, "Tiros", obj_tiro_player);
		}
		else if (level_tiro == 2)
		{
			var tiro1 = instance_create_layer(x - 60, _y_tiro, "Tiros", obj_tiro2_player);
			//Fazendo o tiro 1 ir para a esquerda
			tiro1.hspeed = -5;
			
			//Fazendo o tiro 2 ira para a direita
			var tiro2 = instance_create_layer(x + 60, _y_tiro, "Tiros", obj_tiro2_player);
			tiro2.hspeed = 5;
		}
	}
}

#endregion








