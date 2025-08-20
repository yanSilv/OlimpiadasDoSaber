var xx = 100;
var yy = 220;
var largura_max = 1100;
var altura_linha = 50;

var posi_respo_colA = 560;
var posi_respo_colB = 628;
var posi_respo_colC = 560;
var posi_respo_colD = 628;

if (ds_list_size(perguntas) > 0) {
	draw_self();
    var q = perguntas[| pergunta_atual];
	draw_text(156, 72, "Pergunta " + string(pergunta_atual + 1));
	draw_set_font(perguntasTitulo);
	draw_set_color(c_white);
	draw_text_ext(xx+5, yy+5, q.pergunta, altura_linha, largura_max);
    
	draw_set_font(fnt_perguntas);
	draw_set_color(make_color_rgb(91, 140, 153));
	
	if (string_width(q.opcaoA) > 550) {
		posi_respo_colA -= 10;
	}
	if (string_width(q.opcaoB) > 550) {
		posi_respo_colB -= 10;
	}
	if (string_width(q.opcaoC) > 550) {
		posi_respo_colC -= 10;
	}
	if (string_width(q.opcaoD) > 550) {
		posi_respo_colD -= 10;
	}
	
	draw_text_ext(127, posi_respo_colA, q.opcaoA, 20, 400);
	draw_text_ext(127, posi_respo_colB, q.opcaoB, 20, 400);
	draw_text_ext(811, posi_respo_colC, q.opcaoC, 20, 400);
	draw_text_ext(811, posi_respo_colD, q.opcaoD, 20, 400);
	
    draw_text(32,   20, "Erros: " + string(erros));
	
	//Logica de animação dos botões para o mouse
	var mx = device_mouse_x(0);
	var my = device_mouse_y(0);
	draw_set_color(c_white);
	
	if (mx > 55 && mx < 540){
		if (my > 550 && my < 600) {
			draw_rectangle(55, yFin, 540, yFin+10, false);
		} else if (my > 610 && my < 660) {
			draw_rectangle(55, 665, 540, 665+10, false);
		}	
	} else if (mx > 740 && mx < 1225) {
		if (my > 550 && my < 600) {
			draw_rectangle(740, yFin, 1225, yFin+10, false);
		} else if (my > 610 && my < 660) {
			draw_rectangle(740, 665, 1225, 665+10, false);
		}
	}
	
}