var mx = device_mouse_x(0);
var my = device_mouse_y(0);



// Hover nos botões
if (mx > 465 && mx < 700) {
    if (my > 525 && my < 575) {
        draw_rectangle(465, 575, 700, 585, false);
		
    } else if (my > 582 && my < 632) {
        draw_rectangle(465, 632, 700, 642, false);
		
    } else if (my > 641 && my < 691) {
        draw_rectangle(465, 691, 700, 701, false);
		
    }
}