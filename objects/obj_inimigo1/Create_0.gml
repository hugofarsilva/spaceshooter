/// @description Insert description here
// You can write your code in this editor
randomize();
vspeed = 3;
pontos = 10;
//Iniciando o alarme entre 1 e 3 segundos
alarm[0] = random_range(1, 3) * room_speed;

atirando = function()
{
	if (y >= 64)
	{
		instance_create_layer(x - 3, y + sprite_height/3, "Tiros", obj_tiro_inimigo1);
	}
}





