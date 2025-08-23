// URL do seu servidor
//URL do banco de dados
server_url = "http://localhost:3000/perguntas";

//Configuração do sistema
qtd_erros = 3;
qtd_perguntas = 5;
qtd_faceis = 0;
qtd_dificeis = 0;

pergunta_atual = 0;
erros = 0;
acertos = 0;
count_perguntas = 0;
db_perguntas = true;

//Lista de Perguntas
perguntas = ds_list_create();

//Nivel das perguntas
perguntas_iniciante = 0;
perguntas_medio = 0;
perguntas_dificil = 0;

mostrar_feedback = false;

// Buscar perguntas do servidor ou da lista no sistema
if (db_perguntas) {
	http_get(server_url);
} else {
	var todas_perguntas = src_db_perguntas();
	src_gera_lista_perguntas(todas_perguntas);
}

//Oculta a instancia onde é exibido o obj final
layer_set_visible("Instances_final", false);

yIni = 547;
yFin = 600;

audio_play_sound(sou_theme_game, 1, true);
mouse_over = true;