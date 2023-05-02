/// @description Criando os inimigos
// You can write your code in this editor

//Criando os inimigos aleatóriamente na room
var _x = irandom_range(50, room_width - 50);
var _y = irandom_range(-100, -1500)

//Criando o inimigo com base no level
//A chance de criar um inimigo mais forte depende do level
var chance = random_range(0, level);
var inimigo = obj_inimigo1;
//Se o valor da chance for maior do que 2
if (chance > 2)
{
	inimigo = obj_inimigo2;
}

instance_create_layer(_x, _y, "Inimigos", inimigo);

alarm[0] = room_speed * 2;





