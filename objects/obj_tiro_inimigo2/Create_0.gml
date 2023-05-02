/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

//Definindo a minha velocidade
speed = 6;
//Achando a direção do player
//Indo na direção do player
//Checando se o player existe na room
if (instance_exists(obj_player))
{
	direction = point_direction(x, y, obj_player.x, obj_player.y);
}
image_angle = direction + 90;