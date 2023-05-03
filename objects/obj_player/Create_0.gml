/// @description Insert description here
// You can write your code in this editor

#region Variáveis

vel = 4;
espera_tiro = room_speed;
#endregion

#region Atirando

atirando = function()
{
	var fire = keyboard_check(vk_space)

	if (fire and !alarm[0])
	{
		alarm[0] = espera_tiro;
		instance_create_layer(x, y - sprite_height/3, "Tiros", obj_tiro_player)
	}
}

#endregion








