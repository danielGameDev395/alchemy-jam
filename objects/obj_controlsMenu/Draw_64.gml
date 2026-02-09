// get coordenates
var gui_w=display_get_gui_width()
var gui_h=display_get_gui_height()

var first_w=gui_w/4
var middle_w=gui_w/2
var second_w=gui_w-first_w

var text_h=gui_h/8

// controls
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

for (var i=0; i<array_length(actions); i++) {
	draw_set_font(ft_bestTimes); draw_set_color(c_white)
	if (i==0) { draw_set_color(c_aqua); draw_set_font(ft_gameTitle) }
	
	draw_text(first_w, text_h+distance*i, actions[i])
	draw_text(middle_w, text_h+distance*i, keyboard[i])
	draw_text(second_w, text_h+distance*i, controller[i])
}

// command to exit
draw_set_font(ft_gameTitle)
draw_set_color(c_orange)

draw_text(middle_w, text_h+distance*(array_length(actions)+1), "Press Esc/Backspace or Select to return")

// set all to default
draw_set_font(-1)
draw_set_halign(-1)
draw_set_valign(-1)
draw_set_color(c_white)