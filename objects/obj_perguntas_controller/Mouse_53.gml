var mx = device_mouse_x(0);
var my = device_mouse_y(0);
var resposta = "";
	
if (point_in_rectangle(mx, my, 55, 550, 540, 600)) {
    resposta = "A";
}
else if (point_in_rectangle(mx, my, 55, 610, 540, 660)) {
    resposta = "B";
}
else if (point_in_rectangle(mx, my, 740, 550, 1225, 600)) {
    resposta = "C";
}
else if (point_in_rectangle(mx, my, 740, 610, 1225, 660)) {
    resposta = "D";
}

src_resposta_perguntas(resposta);