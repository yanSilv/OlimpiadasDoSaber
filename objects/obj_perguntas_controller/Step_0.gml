var mx = device_mouse_x(0);
var my = device_mouse_y(0);

var flg_obj_final_exist = false;

var dentro_area = 
    ((mx > 55 && mx < 540) && ((my > 550 && my < 600) || (my > 610 && my < 660))) ||
    ((mx > 740 && mx < 1225) && ((my > 550 && my < 600) || (my > 610 && my < 660)));


//Verifica se a intancia final está ativa para não acionar o só do mouse sob o botão	
var layer_id = layer_get_id("Instances_final");
if (layer_get_visible(layer_id)) {
    flg_obj_final_exist = true;
}


if (!flg_obj_final_exist) {
	src_mouser_over(dentro_area);
}
