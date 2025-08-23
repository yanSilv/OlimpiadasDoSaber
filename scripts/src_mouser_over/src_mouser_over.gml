function src_mouser_over(dentro_area){
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
}