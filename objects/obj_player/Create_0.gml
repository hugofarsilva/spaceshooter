/// @description Insert description here
// You can write your code in this editor

#region Variáveis

vel = 4;

#endregion

#region Atirando

atirando = function()
{
	var fire = keyboard_check_pressed(vk_space)

	if (fire)
	{
		instance_create_layer(x, y - sprite_height/3, "Tiros", obj_tiro_player)
	}
}

#endregion








