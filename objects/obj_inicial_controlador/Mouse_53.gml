var mx = device_mouse_x(0);
var my = device_mouse_y(0);

// Iniciar
if (mx > 465 && mx < 700 && my > 525 && my < 575) {
	audio_stop_sound(sou_theme_menu);
    room_goto(room_nivel); // Muda para room que apresenta os niveis
}

// Tutorial
if (mx > 465 && mx < 700 && my > 582 && my < 632) {
	audio_stop_sound(sou_theme_menu);
	room_goto(room_tutorial); // Muda para room do tutorial
}

// Créditos
if (mx > 465 && mx < 700 && my > 641 && my < 691) {
   audio_stop_sound(sou_theme_menu);
   room_goto(room_creditos); // Muda para room de Creditos
}