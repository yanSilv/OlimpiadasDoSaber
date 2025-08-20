mostrar_feedback = false;

with (obj_acerto) {
	obj_acerto.visible = false;
	//instance_destroy();
};

pergunta_atual += 1;

show_debug_message(count_perguntas);
show_debug_message(qtd_perguntas);

if (pergunta_atual >= ds_list_size(perguntas) || (count_perguntas >= qtd_perguntas)) {
   show_debug_message("Fim das perguntas!");
	
	var total = acertos + erros;
	var acertos_valor = acertos;
	var erros_valor = erros;
	
	visible = false;
	layer_set_visible("Instances", false);
	layer_set_visible("Instances_final", true);
	var final = instance_create_layer(x, y, "Instances_final", obj_final);
	final.visible = true;
	
	pergunta_atual = 0;
    erros = erros_valor;
	acertos = acertos_valor;
	
}