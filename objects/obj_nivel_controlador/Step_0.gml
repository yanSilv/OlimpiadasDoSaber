var mx = device_mouse_x(0);
var my = device_mouse_y(0);

var dentro_area = 
    (mx > 932 && mx < 1194 && my > yIni && my < yFin) ||
    (mx > 658 && mx < 920 && my > yIni && my < yFin) ||
    (mx > 385 && mx < 646 && my > yIni && my < yFin) ||
	(mx > 110 && mx < 373 && my > yIni && my < yFin) ||
	(mx > 23 && mx < 96 && my > 624 && my < 710);
	

src_mouser_over(dentro_area);