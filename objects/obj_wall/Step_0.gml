if (global.paused) { image_speed=0; exit; }
image_speed=1

x+=xspd

if (player.state==playerStateFree) {
	if (place_meeting(x-1, y, player)) { // horizontal collision
		player.x+=xspd // pushes the player
		if (player.x<sprite_width/2) {  game_over("pushed"); room_restart() } // game over* if player escapes the screen
	}
	else if (place_meeting(x, y-1, player)) { // vertical collision
		player.x+=xspd
	}
}

// destroy if not in screen
if (x<0-sprite_width) { instance_destroy() }