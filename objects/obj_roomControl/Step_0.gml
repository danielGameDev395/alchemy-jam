// damage indicator
alpha_time=lerp(alpha_time, 0, 0.025)

if (alpha_time==0) { time_change=0 }

// pause
if (pause_button()) { pause_game() }

// gameover
if (global.gameover) { 
	audio_gain=lerp(audio_gain, 0, 0.01)
	
	alpha_over=lerp(alpha_over, 0.7, 0.01)
	alpha_over2=lerp(alpha_over2, 1, 0.015)
	distance_over=lerp(distance_over, room_height/4, 0.025)
	
	if (alpha_over2>=0.6) {
		if (restart_button()) { room_restart() }
		if (goto_menu_button()) { room_goto(Stage_Selector) }
	}
}

audio_master_gain(audio_gain)