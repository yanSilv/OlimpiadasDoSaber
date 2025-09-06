var mx = device_mouse_x(0);
var my = device_mouse_y(0);

var dentro_area = 
    (mx > 465 && mx < 700 && my > 525 && my < 575) ||
    (mx > 465 && mx < 700 && my > 582 && my < 632) ||
    (mx > 465 && mx < 700 && my > 641 && my < 691) ||
	(mx > 18 && mx < 95 && my > 620 && my < 710);
	

src_mouser_over(dentro_area);

