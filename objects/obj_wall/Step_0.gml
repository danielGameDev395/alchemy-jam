if (global.paused) { image_speed=0; exit; }
image_speed=1

x+=xspd

if (player.state!=playerStateSliding) {
	if (place_meeting(x-1, y, player) || place_meeting(x, y-1, player)) {
		player.x+=xspd // pushes the player
	}
}

// game over if player escapes the screen
if (player.x<sprite_width/4) { game_over() }

// destroy if not in screen
if (x<0-sprite_width) { instance_destroy() }