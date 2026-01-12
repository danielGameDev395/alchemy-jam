var gui_width=display_get_gui_width()
var gui_height=display_get_gui_height()

draw_set_font(ft_bestTimes)
draw_set_colour(c_dkgray)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

best_time=format_time(global.best_times[index])
draw_text(gui_width/4, gui_height-gui_height/4, $"Best remaining time: {best_time}")

draw_set_font(-1)
draw_set_colour(c_white)
draw_set_halign(-1)
draw_set_valign(-1)