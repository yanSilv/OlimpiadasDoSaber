var mx = device_mouse_x(0);
var my = device_mouse_y(0);

if (my >624 && my < 710 && mx > 23 && mx < 96) {
	draw_rectangle(23, 710, 96, 720, false);
}