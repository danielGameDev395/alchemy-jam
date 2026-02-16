// draws the room's button
if (global.is_mobile) {
	switch (room) {
		case rm_mainMenu:
			draw_sprite_ext(spr_arrow, 0, 64, 128, 1, 1, 90, c_white, 0.7)
			draw_sprite_ext(spr_arrow, 0, 64, 184, 1, 1, 270, c_white, 0.7)
		
			draw_sprite(spr_play, 0, 436, 166)
			break;
		case rm_stageSelector:
			draw_sprite_ext(spr_arrow, 0, 50, 246, -1, 1, 0, c_white, 0.7)
			draw_sprite_ext(spr_arrow, 0, 110, 246, 1, 1, 0, c_white, 0.7)
		
			draw_sprite(spr_play, 0, 452, 238)
			draw_sprite(spr_house, 0, 382, 238)
			break;
		case rm_controls:
			draw_sprite(spr_house, 0, 40, 36)
			break;
		default:
			// doesn't show the buttons if gameover
			if (audio_is_playing(GameoverExplosion)) { break; }
		
			// pause and gameover buttons
			if (global.paused || global.gameover) {
				draw_sprite(spr_restart, 0, 70, 140)
				draw_sprite(spr_house, 0, 417, 140)
			
				// pause exclusive buttons
				if (global.paused) {
					draw_sprite(spr_play, 0, 476, 42)
				}
			}		
		
			// action buttons
			else {
				draw_sprite_ext(spr_arrow, 0, 40, 230, -1, 1, 0, c_white, 0.5)
				draw_sprite_ext(spr_arrow, 0, 100, 230, 1, 1, 0, c_white, 0.5)		
			
				draw_sprite_ext(spr_swordButton, 0, 470, 164, 1, 1, 0, c_white, 0.5)
				draw_sprite_ext(spr_jumpButton, 0, 392, 218, 1, 1, 0, c_white, 0.5)
			
				draw_sprite(spr_pause, 0, 476, 42)
			}
			break;
	}
}