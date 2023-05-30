/// @description Insert description here
// You can write your code in this editor

if (!troquei_room)
{
	alpha += 0.02;
}
else
{
	//Troquei de room eu diminuo o alpha
	alpha -= 0.02;
}

//Se o alpha é menor do que zero eu me destruo
if (alpha <= 0)
{
	instance_destroy();
}

//Checar se a tela está totalmente escura e mudar de room se eu ainda não mudei
if (alpha >= 1 && !troquei_room)
{
	room_goto(destino);
}






