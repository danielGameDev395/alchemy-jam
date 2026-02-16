// stops the chronometer
if (time_freezed) { exit; }

if (!global.paused) { 
	global.time-=0.1
	
	// bomb's animation faster and bomb's blend
	if (global.time<critic_time) {
		layer_sprite_speed(bomb, 1.5)
		layer_sprite_blend(bomb, c_red)
	}
}

if (global.time>0) { alarm[0]=game_get_speed(gamespeed_fps)/10 }
else { game_over() /* bomb explosion logic (game over?) */ }