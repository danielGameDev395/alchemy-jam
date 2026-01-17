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
	
	with (obj_player) {
		global.time-=damage
		
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

	// stops the ground and the bomb
	if (global.paused) {
		layer_hspeed("Ground", 0)
		layer_sprite_speed(bomb, 0)
	}
	else {
		layer_hspeed("Ground", -2)
		layer_sprite_speed(bomb, 1)
	}	
}

