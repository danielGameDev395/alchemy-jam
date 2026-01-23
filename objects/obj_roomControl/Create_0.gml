#region Time
// time in seconds
global.time=0

switch (room) {
	case rm_stage1: global.time=15 break;
	case rm_stage2: global.time=19 break;
	case rm_stage3: global.time=22 break;
}

critic_time=global.time/2

time_freezed=false

time_change=0
alpha_time=0
y_time=0

// gets the bomb for control animation
bomb=layer_get_all_elements("Bomb")[0]

alarm[0]=game_get_speed(gamespeed_fps)/10
#endregion

#region Gameover
audio_stop_all()
alarm_set(1, game_get_speed(gamespeed_fps)/2)

alpha_over=0
alpha_over2=0
distance_over=5

global.gameover=false
#endregion