function src_resposta_perguntas(resposta){
	if (ds_list_size(perguntas) > 0 && (alarm[0] <= 0 && alarm[1] <= 0)) {
	    var q = perguntas[| pergunta_atual];

	    if (resposta != "" && count_perguntas < qtd_perguntas) {
		
	        if (resposta == q.resCorreta) {
	            show_debug_message("Resposta correta!");
				audio_play_sound(sou_win, 1, false);
	            mostrar_feedback = true;
				obj_acerto.visible = true;
				//instance_create_layer(x, y, "Instances", obj_acerto);
				count_perguntas += 1;
				acertos += 1;
				alarm[0] = room_speed * 2;		
	        } else {
	            erros += 1;
	            show_debug_message("Resposta errada!");
				audio_play_sound(sou_error, 1, false);
				mostrar_feedback = true;
				obj_erro.visible = true;
				//instance_create_layer(x, y, "Instances", obj_erro);
				count_perguntas += 1;
				alarm[1] = room_speed * 2;
	        }
		
	    } 
	}
}