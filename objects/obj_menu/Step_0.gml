if (alarm[0]>0) { exit; }

if (up_button()) { index--; audio_play_sound(MenuSelector, 0, false) }
if (down_button()) { index++; audio_play_sound(MenuSelector, 0, false) }

if (index<0) { index=array_length(options)-1 }
if (index>array_length(options)-1) { index=0 }

if (confirm_button()) {
	audio_play_sound(MenuConfirm, 0, false)
	alarm_set(0, audio_sound_length(MenuConfirm)*game_get_speed(gamespeed_fps))
}