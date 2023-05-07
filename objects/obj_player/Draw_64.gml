/// @description Insert description here
// You can write your code in this editor

var altura_gui = display_get_gui_height();
var espacamento_vida = 40;

repeat(vida)
{
	draw_sprite_ext(spr_player, 0, espacamento_vida, 40, 0.3, 0.3, image_angle, image_blend, .3);
	espacamento_vida += 50;
}

var espacamento_escudo = 40;
repeat(escudo)
{
	draw_sprite_ext(spr_escudo, 2, espacamento_escudo, 90, 0.3, 0.3, image_angle, image_blend, .3);
	espacamento_escudo += 50;
}





