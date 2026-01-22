var rm_w=room_width
var rm_h=room_height
var w_middle=rm_w/2
var h_middle=rm_h/2

if !(global.gameover) { exit; }

#region Gameover
// darkness the screen
draw_set_colour(c_black)
draw_set_alpha(alpha_over)
draw_rectangle(0, 0, rm_w, rm_h, false)

// top and bottom rectangles
draw_set_alpha(1)
draw_rectangle(0, 0, rm_w, 0+distance_over, false)
draw_rectangle(0, rm_h, rm_w, rm_h-distance_over, false)

// GAME-OVER
draw_set_font(ft_gameover)
draw_set_alpha(alpha_over2)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
// shadow
draw_set_color(c_red)
draw_text(w_middle+1, h_middle+1, "G A M E - O V E R")
//text
draw_set_color(c_white)
draw_text(w_middle, h_middle, "G A M E - O V E R")

// buttons to restart
draw_set_font(ft_bestTimes)
draw_set_alpha(alpha_over2-0.3)
draw_text(w_middle, h_middle+30, "Press R or Select to restart")
draw_text(w_middle, h_middle+45, "Press Q or LB to go to stage select")

#endregion

// set all to default
draw_set_colour(-1)
draw_set_alpha(1)
draw_set_font(-1)
draw_set_halign(-1)
draw_set_valign(-1)