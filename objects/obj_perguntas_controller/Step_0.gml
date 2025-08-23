var mx = device_mouse_x(0);
var my = device_mouse_y(0);

var dentro_area = 
    ((mx > 55 && mx < 540) && ((my > 550 && my < 600) || (my > 610 && my < 660))) ||
    ((mx > 740 && mx < 1225) && ((my > 550 && my < 600) || (my > 610 && my < 660)));
	

// Verifica se o mouse entrou na área
if (dentro_area) {
    if (mouse_over) {
        audio_play_sound(sou_select_menu, 1, false);
        mouse_over = false;
    }
} else {
    // Só reseta quando o mouse sai da área
    mouse_over = true;
}