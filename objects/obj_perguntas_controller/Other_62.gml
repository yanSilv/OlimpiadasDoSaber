var json = async_load[? "result"];
var minha_map = json_parse(json);
var tamanho = array_length(minha_map);
for (var i = 0; i < tamanho; i++) {    
	var pergunta_map = minha_map[i];
	//show_message(pergunta_map.pergunta);
	//show_message(pergunta_map.opcaoB);
	ds_list_add(perguntas, pergunta_map);
}