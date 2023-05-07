/// @description Insert description here
// You can write your code in this editor

var altura_gui = display_get_gui_height();
var espacamento_x = 40;
repeat(vida)
{
	draw_sprite_ext(spr_player, 0, espacamento_x, altura_gui - 40, 0.2, 0.2, image_angle, image_blend, .3);
	espacamento_x += 30;
}






