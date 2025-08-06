
var mx = device_mouse_x(0);
var my = device_mouse_y(0);

draw_self();
draw_set_color(c_white);

if (mx > 23 && mx < 96 && my > 624 && my < 710) {
	draw_rectangle(23, 710, 97, 720, false);
}

draw_set_font(perguntasTitulo);
//draw_set_halign(fa_center);
//draw_set_valign(fa_middle);
var controlador = instance_find(obj_perguntas_controller, 0);
var acertos = controlador.acertos;
var erros = controlador.erros;
draw_text(400, 280, "Acertos: " + string(acertos));
draw_text(400, 430, "Erros: " + string(erros));
