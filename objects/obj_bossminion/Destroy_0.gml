/// @description Insert description here
// You can write your code in this editor

//Criando a explosão
instance_create_layer(x, y, "Inimigos", obj_explosao_inimigo);
audio_play_sound(snd_impactotiro, 10, false);

screenshake(10);

global.totalInimigos ++;



