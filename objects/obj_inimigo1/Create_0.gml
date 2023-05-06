/// @description Insert description here
// You can write your code in this editor
randomize();
vspeed = 3;
pontos = 10;
//Chance de dropar o item = 20%
chance = 20;

//Iniciando o alarme entre 1 e 3 segundos
alarm[0] = random_range(1, 3) * room_speed;

if (place_meeting(x, y, obj_inimigo1))
{
	instance_destroy(id, false);
}

atirando = function()
{
	if (y >= 64)
	{
		instance_create_layer(x - 3, y + sprite_height/3, "Tiros", obj_tiro_inimigo1);
	}
}

///@method dropa_item(chance_de_dropar_em_porcentagem)
dropa_item = function(_chance)
{
	var valor = random(100);
	//Se o valor for menor que a chance ele cria o item
	if (valor <= _chance)
	{
		instance_create_layer(x, y, "Powerup", obj_powerup);
	}
	
}





