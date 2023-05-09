/// @description Insert description here
// You can write your code in this editor

vida_max = 2000;
vida_atual = vida_max;

//Alternando os estados
//Diminuindo a espera do estado
espera_estado--;
if (espera_estado <= 0)
{
	//Vou escolher outro estado
	estado_atual = choose("estado1", "estado2", "estado3");
	espera_estado = delay_estado;
}

if (estado_atual == "estado1")
{
	estado_01();
}
else if (estado_atual == "estado2")
{
	estado_02();
}
else if (estado_atual == "estado3")
{
	estado_03();
}
else if (estado_atual == "estado4")
{
	
}

x = clamp(x, 288, 1634);






