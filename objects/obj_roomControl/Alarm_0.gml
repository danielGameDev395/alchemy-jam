// stops the chronometer
if (time_freezed) { exit; }

if (!global.paused) { 
	global.time-=0.1
	
	// bomb's animation faster
	if (global.time<critic_time) {
		layer_sprite_speed(bomb, 1.5)
	}
}

if (global.time>0) { alarm[0]=game_get_speed(gamespeed_fps)/10 }
else { room_restart(); game_over("time over") /* bomb explosion logic (game over?) */ }