/// @description Criando os inimigos
// You can write your code in this editor

//Criando os inimigos aleatóriamente na room
var _x = irandom_range(50, room_width - 50);
var _y = irandom_range(-100, -1500)
instance_create_layer(_x, _y, "Inimigos", choose(obj_inimigo1, obj_inimigo2));

alarm[0] = room_speed * 3;





