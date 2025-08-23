// Script scr_get_niveis_permitidos(nivel_jogador)
function scr_get_niveis_permitidos(nivel_jogador) {
    var nivel_map = [
			[NiveisJovo.INICIANTE],
			[NiveisJovo.INICIANTE, NiveisJovo.MEDIANO],
			[NiveisJovo.MEDIANO, NiveisJovo.DIFICIL],
			[NiveisJovo.DIFICIL]
		];
    return nivel_map[nivel_jogador];
}

function scr_filtrar_perguntas(perguntas, nivel_jogador) {
    var niveis_permitidos = scr_get_niveis_permitidos(nivel_jogador);
	
    var filtradas = [];
    var count = 0;
	
	if (nivel_jogador == NiveisJovo.MEDIANO) {
		qtd_faceis   = round(qtd_perguntas * 0.6);
        qtd_dificeis = qtd_perguntas - qtd_faceis;
	}
	
	if (nivel_jogador == NiveisJovo.DIFICIL) {
		qtd_faceis   = round(qtd_perguntas * 0.2);
        qtd_dificeis = qtd_perguntas - qtd_faceis; // resto
	}

    for (var i = 0; i < array_length(perguntas); i++) {
        var q = perguntas[i];
		
		if (nivel_jogador == NiveisJovo.MEDIANO ) {
			if (q.Nivel == NiveisJovo.INICIANTE && qtd_faceis != 0) {
				filtradas[count++] = q;
				qtd_faceis -= 1;
			}
			
			if (q.Nivel == NiveisJovo.MEDIANO && qtd_dificeis != 0) {
				filtradas[count++] = q;
				qtd_dificeis -= 1;
			}
		}
		
		if (nivel_jogador == NiveisJovo.DIFICIL ) {
			if (q.Nivel == NiveisJovo.MEDIANO && qtd_faceis != 0) {
				filtradas[count++] = q;
				qtd_faceis -= 1;
			}
			
			if (q.Nivel == NiveisJovo.DIFICIL && qtd_dificeis != 0) {
				filtradas[count++] = q;
				qtd_dificeis -= 1;
			}
		}
		
		if (nivel_jogador == NiveisJovo.INICIANTE ||  nivel_jogador == NiveisJovo.PROFISSIONAL) {
			if (array_contains(niveis_permitidos, q.Nivel)) {
				filtradas[count++] = q;
			}
		}
    }

    return filtradas;
}

function scr_sortear_perguntas(perguntas_filtradas, qtd ) {
	
    var selecionadas = [];
    var indices = ds_list_create();

    // Cria uma lista com os índices das perguntas filtradas
    for (var i = 0; i < array_length(perguntas_filtradas); i++) {
        ds_list_add(indices, i);
    }

    // Embaralha a lista
    ds_list_shuffle(indices);

    // Pega só a quantidade pedida (ex: 20)
    for (var j = 0; j < min(qtd, ds_list_size(indices)); j++) {
        var idx = indices[| j];
        selecionadas[j] = perguntas_filtradas[idx];
    }

    ds_list_destroy(indices);
    return selecionadas;
}

function src_gera_lista_perguntas (todas_perguntas) {
	//show_debug_message("Todas as perguntas");
	//show_debug_message(todas_perguntas);
	var jogador_nivel = global.nivel;

	// Filtrar só as que ele pode responder
	var perguntas_filtradas = scr_filtrar_perguntas(todas_perguntas, jogador_nivel);

	// Sortear 20 perguntas únicas
	var selecionadas = scr_sortear_perguntas(perguntas_filtradas, qtd_perguntas);

	for (var i = 0; i < qtd_perguntas; i++) {
		ds_list_add(perguntas, selecionadas[i]);
	}
}


