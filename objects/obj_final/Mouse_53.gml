var mx = device_mouse_x(0);
var my = device_mouse_y(0);

// Iniciar
if (mx > 23 && mx < 96 && my > 624 && my < 710 && layer_get_visible("Instances_final")) {
	audio_stop_sound(sou_theme_game);
    room_goto(room_inicial); 
}