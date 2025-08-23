var xx = 100;
var yy = 220;

var largura_max = 1100;
var altura_linha = 50;

var posicoes_y = [560, 628, 560, 628];
var posicoes_x = [127, 127, 811, 811];


if (ds_list_size(perguntas) > 0) {
	draw_self();
    var q = perguntas[| pergunta_atual];
	
	var opcoes = [q.opcaoA, q.opcaoB, q.opcaoC, q.opcaoD];
	
	draw_set_color(c_black);
	draw_text(156, 72, "Pergunta " + string(pergunta_atual + 1));
	
	draw_set_font(perguntasTitulo);
	draw_set_color(c_white);
	draw_text_ext(xx+5, yy+5, q.pergunta, altura_linha, largura_max);
    
	draw_set_font(fnt_perguntas);
	draw_set_color(c_black);
	
	// Desenha as opções
    for (var i = 0; i < 4; i++) {
        var pos_y = posicoes_y[i];
        if (string_width(opcoes[i]) > 550) {
            pos_y -= 10;
        }
        draw_text_ext(posicoes_x[i], pos_y, opcoes[i], 20, 400);
    }
	
    draw_text(32,   20, "Erros: " + string(erros));
	
	//Logica de animação dos botões para o mouse
	var mx = device_mouse_x(0);
	var my = device_mouse_y(0);
	draw_set_color(c_white);
	
	if (point_in_rectangle(mx, my, 55, 550, 540, 600)) {
	    draw_rectangle(55, yFin, 540, yFin + 10, false);
	} else if (point_in_rectangle(mx, my, 55, 610, 540, 660)) {
	    draw_rectangle(55, 665, 540, 675, false);
	} else if (point_in_rectangle(mx, my, 740, 550, 1225, 600)) {
	    draw_rectangle(740, yFin, 1225, yFin + 10, false);
	} else if (point_in_rectangle(mx, my, 740, 610, 1225, 660)) {
	    draw_rectangle(740, 665, 1225, 675, false);
	}
	
}