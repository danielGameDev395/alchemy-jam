if !(obj_roomControl.time_freezed) { exit; }

stage_index=array_get_index(global.stages, room)

// register best time
if (global.best_times[stage_index]==0 || global.time>global.best_times[stage_index]) {
	global.best_times[stage_index]=global.time
}

alarm_set(0, 120)

save_game()

if (visible) { audio_play_sound(GetKey, 0, false) }

visible=false