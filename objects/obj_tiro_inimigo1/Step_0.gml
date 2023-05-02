/// @description Insert description here
// You can write your code in this editor

//Me destruindo ao sair da room
if (y > room_height + 100)
{
	instance_destroy();
}

//Diminuindo a escala do tiro

image_xscale = lerp(image_xscale, 1, 0.5);
image_yscale = lerp(image_yscale, 1, 0.5);






