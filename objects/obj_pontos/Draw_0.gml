/// @description Insert description here
// You can write your code in this editor
//_y = display_get_gui_height();
//_x = display_get_gui_width()
draw_set_font(fnt_pontos)
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
//Desenhando a maior pontuação SE o obj_transicao não existe
var _pontos = round(pontos);
draw_text(room_width/2, 270, "RECORD: " + string(_pontos));
//Inimigos
draw_text(room_width/2, 320, "INIMIGOS: " + string(global.totalInimigos));
//Mortes
draw_text(room_width/2, 370, "MORTES: " + string(global.totalMorte));

//Fazendo pontos chegar até max pontos
//Se pontos for menor do que max pontos eu aumento o valor dele
if (pontos < global.maxpontos)
{
	//Aumentando o valor de pontos em 5% do maxpontos
	var _incrementa_pontos = global.maxpontos * 0.005;
	pontos += _incrementa_pontos;
}
draw_set_font(-1);
draw_set_align();







