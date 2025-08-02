if (ds_list_size(perguntas) > 0) {
    var q = perguntas[| pergunta_atual];
    var resposta = "";
    if (keyboard_check_pressed(ord("A"))) resposta = q.opcaoA;
    if (keyboard_check_pressed(ord("B"))) resposta = q.opcaoB;
    if (keyboard_check_pressed(ord("C"))) resposta = q.opcaoC;

    if (resposta != "") {
        if (resposta == q.resCorreta) {
            show_debug_message("Resposta correta!");
            mostrar_feedback = true;
			obj_acerto.visible = true;
			instance_create_layer(x, y, "Instances", obj_acerto);
			alarm[0] = room_speed * 2;
        } else {
            erros += 1;
            show_debug_message("Resposta errada!");
			mostrar_feedback = true;
			obj_erro.visible = true;
			instance_create_layer(x, y, "Instances", obj_erro);
			alarm[1] = room_speed * 2;
            if (erros >= 3) {
                show_debug_message("Você perdeu, tente novamente");
                pergunta_atual = 0;
                erros = 0;
            }
        }
    }
}