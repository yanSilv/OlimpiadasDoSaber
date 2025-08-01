var mx = device_mouse_x(0);
var my = device_mouse_y(0);



if (my > yIni && my < yFin) {
	
	if (mx > 110 && mx < 373){
		draw_rectangle(110, yFin, 373, yFin+10, false);
	} else if (mx > 385 && mx < 646) {
		draw_rectangle(385, yFin, 646, yFin+10, false);
	} else if (mx > 658 && mx < 920) {
		draw_rectangle(658, yFin, 920, yFin+10, false);
	} else if (mx > 932 && mx < 1194) {
		draw_rectangle(932, yFin, 1194, yFin+10, false);
	} 
}

if (my >624 && my < 710 && mx > 23 && mx < 96) {
	draw_rectangle(23, 710, 96, 720, false);
}