/// @description Insert description here
// You can write your code in this editor

if (y < -200)
{
	instance_destroy(id, false);	
	
}

//Diminuindo a escala do tiro

image_xscale = lerp(image_xscale, 1, 0.5);
image_yscale = lerp(image_yscale, 1, 0.5);




