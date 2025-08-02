mostrar_feedback = false;

with (obj_acerto) {
	obj_acerto.visible = false;
	//instance_destroy();
};

pergunta_atual += 1;

if (pergunta_atual >= ds_list_size(perguntas)) {
    show_debug_message("Fim das perguntas!");
    pergunta_atual = 0;
    erros = 0;
}