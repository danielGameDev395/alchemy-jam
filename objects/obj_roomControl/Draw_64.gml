// get GUI size
var gui_width=display_get_gui_width()
var gui_height=display_get_gui_height()

#region Time
draw_set_font(ft_timer)
draw_set_color(c_white)

if (global.time<critic_time) { draw_set_color(c_red) }

// chronometer
draw_text(35, 15, format_time(global.time))

// time change visual indicator
if (time_change!=0) {
	signal=time_change>0? "+":""
	color=time_change>0? c_lime:c_red
	draw_text_colour(140, y_time, signal+string(time_change), color, color, color, color, alpha_time)
	y_time--
}
#endregion

#region Pause screen
if (global.paused) {
	draw_set_color(c_black)
	draw_set_alpha(0.5)
	draw_rectangle(0, 0, gui_width, gui_height, false)
	
	//draw_set_font(ft_timer)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_text(gui_width/2, gui_height/2, "Game Paused")
}
#endregion

// set all to default
draw_set_color(c_white)
draw_set_alpha(1)
draw_set_font(-1)
draw_set_halign(-1)
draw_set_valign(-1)