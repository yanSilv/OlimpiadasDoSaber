// URL do seu servidor
server_url = "http://localhost:3000/perguntas";
qtd_erros = 3;
qtd_perguntas = 5;

perguntas = ds_list_create();

pergunta_atual = 0;
erros = 0;
acertos = 0;
count_perguntas = 0;

mostrar_feedback = false;

// Buscar perguntas do servidor
http_get(server_url);

layer_set_visible("Instances_final", false);

yIni = 547;
yFin = 600;