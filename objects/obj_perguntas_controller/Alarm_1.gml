mostrar_feedback = false;

with (obj_erro) {
	obj_erro.visible = false;
};

pergunta_atual += 1;

if (pergunta_atual >= ds_list_size(perguntas)) {
    show_debug_message("Fim das perguntas!");
    pergunta_atual = 0;
    erros = 0;
}