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

#endregion

atirando();
/*
if (keyboard_check_pressed(vk_numpad1))
{
	if (level_tiro < 5)
	{
		level_tiro++;
	}
}

if (keyboard_check_pressed(vk_numpad2))
{
	if (level_tiro > 1)
	{
		level_tiro--;
	}
}

show_debug_message(level_tiro);
