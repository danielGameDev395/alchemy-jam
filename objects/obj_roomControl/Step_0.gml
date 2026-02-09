// damage indicator
alpha_time=lerp(alpha_time, 0, 0.025)

if (alpha_time==0) { time_change=0 }

// pause
if (pause_button() && !global.gameover && alarm[2]<=0) { pause_game() }

if (global.paused) {
	if (restart_button()) { room_restart(); pause_game() }
	if (goto_menu_button()) { room_goto(rm_stageSelector); pause_game() }
}

// gameover
if (global.gameover) { 
	alpha_over=lerp(alpha_over, 0.7, 0.01)
	alpha_over2=lerp(alpha_over2, 1, 0.015)
	distance_over=lerp(distance_over, room_height/4, 0.025)
	
	// restart buttons
	if (alpha_over2>=0.55) {
		if (restart_button()) { room_restart() }
		if (goto_menu_button()) { room_goto(rm_stageSelector) }
	}
}