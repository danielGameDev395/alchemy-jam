#region Time
// add switch case for rooms*

// time in seconds
global.time=20
critic_time=8

time_change=0
alpha_time=0
y_time=0

// gets the bomb for control animation
bomb=layer_get_all_elements("Bomb")[0]

alarm[0]=game_get_speed(gamespeed_fps)/10
#endregion