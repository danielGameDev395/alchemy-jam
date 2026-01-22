// transforms time in seconds in string
function format_time(time) {
	min_=string(floor(time/60))
	sec=string(floor(time%60))
	mili=string(time-floor(time))
	
	if (min_<=9) { min_="0"+min_ }
	if (sec<=9) { sec="0"+sec }
	
	return $"{min_}:{sec}.{string_copy(mili, 3, 1)}"
}

// controls the player's take damage logic
function player_damage(damage, other_, yspd_, cooldown) {
	if (obj_player.invincible==1) { exit; } // damage boost
	
	time_changed(-damage) // visual indicator

	// reduces time and plays sound
	global.time-=damage
	audio_play_sound(PlayerDamage, 0, false)
	
	with (obj_player) {
		// sets the hit flash
		flash=1
		
		// damage direction
		dmg_dir=sign(x-other_.x)
		
		// gain speed
		xspd=dmg_dir*spd
		yspd=yspd_
		
		// damage cooldown
		invincible=1
		alarm_set(0, cooldown)
		
		state=playerStateDamage
	}
}

// sets the time changed in room control
function time_changed(dmg) {
	with (obj_roomControl) {
		time_change=dmg
		
		alpha_time=1; y_time=45
	}
}

// pause or unpause the game and the scenario
function pause_game() {
	global.paused=!global.paused

	if (global.paused) {
		// plays pause sound
		audio_pause_all()
		audio_play_sound(Pause, 0, false)
		
		// stops the background
		layer_hspeed("Ground", 0); layer_sprite_speed(bomb, 0)
		layer_hspeed("Scenario", 0)
	}
	else {
		audio_resume_all()
		
		layer_hspeed("Ground", -2); layer_sprite_speed(bomb, 1)
		layer_hspeed("Scenario", -0.5)
	}	
}

// play the music of the stage
function play_music(stage) {
	switch (stage) {
		case 0: audio_play_sound(Stage_1, 0, true) break;
		case 1: audio_play_sound(Stage_2, 0, true) break;
		case 2: audio_play_sound(Stage_3, 0, true) break;
		default: show_message("Stage hasn't a music") break;
	}
}

// controls the game over logic
function game_over() {
	if (global.gameover) { exit; }
	
	obj_player.state=playerStateDead
	obj_roomControl.time_freezed=true
	
	part_particles_create(EXPLO_SYS, room_width/2, room_height/2, GAMEOVER_PART, 500)
	
	obj_roomControl.alarm[2]=120 // active the alarm at the explosion's final
}