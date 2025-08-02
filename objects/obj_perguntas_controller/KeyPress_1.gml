if (ds_list_size(perguntas) > 0) {
    var q = perguntas[| pergunta_atual];
    var resposta = "";
    if (keyboard_check_pressed(ord("A"))) resposta = q.opcaoA;
    if (keyboard_check_pressed(ord("B"))) resposta = q.opcaoB;
    if (keyboard_check_pressed(ord("C"))) resposta = q.opcaoC;

    if (resposta != "") {
        if (resposta == q.resCorreta) {
            show_message("Resposta correta!");
            pergunta_atual += 1;
        } else {
            erros += 1;
            show_message("Resposta errada!");
            if (erros >= 3) {
                show_message("Você perdeu, tente novamente");
                pergunta_atual = 0;
                erros = 0;
            } else {
                pergunta_atual += 1;
            }
        }
        if (pergunta_atual >= ds_list_size(perguntas)) {
            show_message("Fim das perguntas!");
            pergunta_atual = 0;
            erros = 0;
        }
    }
}