/// @description Insert description here
// You can write your code in this editor


// Inherit the parent event
event_inherited();

//Criando a minha variável de controle pra saber se eu posso mudar de lado
posso_me_mover_para_lado = true;

atirando = function()
{
	if (y >= 64)
	{
		instance_create_layer(x, y + sprite_height/3, "Tiros", obj_tiro_inimigo2);
	}
}