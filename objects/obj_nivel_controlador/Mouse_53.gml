var mx = device_mouse_x(0);
var my = device_mouse_y(0);


show_debug_message("Pressionou "+ string(mx)+ " "+string(my));
// Iniciar
if (mx > 23 && mx < 96 && my > 624 && my < 710) {
	audio_stop_sound(sou_theme_menu);
    room_goto(room_inicial); // Muda para room da tela INICIAL
}

if (mx > 110 && mx < 373 && my > yIni && my < yFin) {
	global.nivel = NiveisJovo.INICIANTE;
	flagSelecao = true;
}

if (mx > 385 && mx < 646 && my > yIni && my < yFin) {
	global.nivel = NiveisJovo.MEDIANO;
	flagSelecao = true;
}

if (mx > 658 && mx < 920 && my > yIni && my < yFin) {
	global.nivel = NiveisJovo.DIFICIL;
	flagSelecao = true;
}

if (mx > 932 && mx < 1194 && my > yIni && my < yFin) {
	global.nivel = NiveisJovo.PROFISSIONAL;
	flagSelecao = true;
}

if (flagSelecao) {
	audio_stop_sound(sou_theme_menu);
	room_goto(room_perguntas);
}