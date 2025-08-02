if (ds_list_size(perguntas) > 0) {
	draw_self();
    var q = perguntas[| pergunta_atual];
	draw_text(156, 72, "Pergunta " + string(pergunta_atual + 1));
	draw_set_font(perguntasTitulo);
	draw_set_color(c_white);
    draw_text(315, 253, q.pergunta);
    draw_set_font(fnt_perguntas);
	draw_set_color(make_color_rgb(91, 140, 153));
	draw_text(127, 560,  q.opcaoA);
    draw_text(127, 628,  q.opcaoB);
    draw_text(811, 560,  q.opcaoC);
	draw_text(811, 628,  q.opcaoD);
    draw_text(32,   20, "Erros: " + string(erros));
}