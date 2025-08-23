var mx = device_mouse_x(0);
var my = device_mouse_y(0);

var dentro_area = 
    (mx > 465 && mx < 700 && my > 525 && my < 575) ||
    (mx > 465 && mx < 700 && my > 582 && my < 632) ||
    (mx > 465 && mx < 700 && my > 641 && my < 691);
	

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

