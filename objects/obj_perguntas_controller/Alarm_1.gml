mostrar_feedback = false;

with (obj_erro) {
	obj_erro.visible = false;
};

pergunta_atual += 1;

if (pergunta_atual >= ds_list_size(perguntas) || (erros >= qtd_erros) || (count_perguntas >= qtd_perguntas)) {
    src_room_final();
}