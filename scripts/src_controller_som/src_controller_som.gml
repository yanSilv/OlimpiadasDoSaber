function src_controller_som(){
	if (global.som_ativo) {
		audio_master_gain(0);
		global.som_ativo = false;
	} else {
		audio_master_gain(1);
		global.som_ativo = true;
	}
}