/// @description Insert description here
// You can write your code in this editor


// Inherit the parent event
event_inherited();

//Definindo a minha velocidade
speed = 6;
//Achando a direção do boss
//Indo na direção do boss
//Checando se o boss existe na room
if (instance_exists(obj_boss))
{
	direction = point_direction(x, y, obj_boss.x, obj_boss.y);
}
image_angle = direction + 90;