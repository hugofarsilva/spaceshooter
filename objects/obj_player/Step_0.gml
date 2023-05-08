/// @description Insert description here
// You can write your code in this editor


#region Movimentação do Player

var left, right, up, down

left = keyboard_check(vk_left);
right = keyboard_check(vk_right);
up = keyboard_check(vk_up);
down = keyboard_check(vk_down);

x += (right - left) * vel;
y += (down - up) * vel;

//Impedindo o player de sair da tela
x = clamp(x, 64, 1844);
y = clamp(y, 64, 1024);

#endregion

//Criando o escudo
if (keyboard_check_pressed(ord("E")))
{
	if (!instance_exists(obj_escudo) and escudo > 0)
	{
		var _escudo = instance_create_layer(x, y, "Escudo", obj_escudo);
		//Eu sou o alvo do escudo
		_escudo.alvo = id;
		escudo--;
	}
}

atirando();

show_debug_message(vida);