mostrar_feedback = false;

with (obj_acerto) {
	obj_acerto.visible = false;
	//instance_destroy();
};

pergunta_atual += 1;

if (pergunta_atual >= ds_list_size(perguntas) || (count_perguntas >= qtd_perguntas)) {
   src_room_final();
}