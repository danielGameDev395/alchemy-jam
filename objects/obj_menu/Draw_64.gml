var gui_w=display_get_gui_width()
var gui_h=display_get_gui_height()

draw_set_halign(fa_center)
draw_set_valign(fa_middle)

// draw title/logo
draw_set_font(ft_gameTitle)
draw_text(gui_w/2, gui_h/4, "Ultimate Bomb Factory")

// draw options
draw_set_font(ft_bestTimes)
for (var i=0; i<array_length(options); i++) {
	if (i==index) { draw_set_color(c_red) }
	else { draw_set_colour(c_white) }
	draw_text(gui_w/2, gui_h/2+i*30, options[i])
}

draw_set_colour(-1)
draw_set_font(-1)
draw_set_halign(-1)
draw_set_valign(-1)