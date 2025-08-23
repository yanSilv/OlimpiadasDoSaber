function src_room_final(){
	show_debug_message("Fim das perguntas!");
	
	//var total = acertos + erros;
	//var acertos_valor = acertos;
	//var erros_valor = erros;
	
	visible = false;
	layer_set_visible("Instances", false);
	layer_set_visible("Instances_final", true);
	var final = instance_create_layer(x, y, "Instances_final", obj_final);
	final.visible = true;
	
	pergunta_atual = 0;
    //erros = erros_valor;
	//acertos = acertos_valor;
}