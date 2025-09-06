//var mx = device_mouse_x(0);
//var my = device_mouse_y(0);

var largura_max = 1100;
var altura_linha = 30;

var xx = 100;
var yy = 120;

//if (my >624 && my < 710 && mx > 23 && mx < 96) {
//	draw_rectangle(23, 710, 96, 720, false);
//}

//Necessario inserir o draw_self para exibir animação do objeto na Room
draw_self();

draw_set_font(fnt_tutorial);
draw_set_color(c_white);
draw_text_ext(xx+5, yy+5, " O jogo consiste em perguntas e respostas sobre o Vale do Jiquiriçá.\n"+
						  " São quatro níveis de dificuldade: Iniciante, Mediano, Difícil e Moderado.\n"+  
						  " Após a escolha do nível, a partida é iniciada com perguntas relacionadas ao tema.\n"+  
						  " Para responder, o usuário pode pressionar as teclas 'A', 'B', 'C' ou 'D',\n"+
						  " ou selecionar a alternativa desejada com o mouse.\n"+  
						  " Ao final, é apresentada a quantidade de acertos e erros do jogador.", altura_linha, largura_max);