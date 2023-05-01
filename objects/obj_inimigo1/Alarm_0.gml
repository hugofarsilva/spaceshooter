/// @description Insert description here
// You can write your code in this editor

//Criando o meu tiro
if (y >= 64)
{
	instance_create_layer(x, y + sprite_height/2, "Tiros", obj_tiro_inimigo1);
}

//Reiniciar o alarme
alarm[0] = room_speed * random_range(1, 3);






