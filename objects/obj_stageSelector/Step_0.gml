for (var i = 0; i<stages+1; i++) {
	// selected stage blends aqua
	if (index==i) { layer_sprite_blend(boxes[i], c_aqua) }
	else { layer_sprite_blend(boxes[i], c_white) }
	
	// blocked stages blends red
    if (i!=0 && global.best_times[i-1]==0) { layer_sprite_blend(boxes[i], c_red) }
}

if (alarm[0]>0) { exit; }

if (right_button()) { 
	if (index<stages && global.best_times[index]!=0) { index++; audio_play_sound(MenuSelector, 0, false) }
	else { audio_play_sound(MenuBlocked, 0, false) }
}

if (left_button()) {
	if (index>0) { index--; audio_play_sound(MenuSelector, 0, false) }
	else { audio_play_sound(MenuBlocked, 0, false) }
}

if (confirm_button()) {
	audio_play_sound(MenuConfirm, 0, false)
	alarm_set(0, audio_sound_length(MenuConfirm)*game_get_speed(gamespeed_fps))
}