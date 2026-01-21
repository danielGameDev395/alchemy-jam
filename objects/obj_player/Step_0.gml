if (global.paused) { image_speed=0; exit; }
image_speed=1

// hit flash return to 0
flash=lerp(flash, 0, 0.05)

state()

if (keyboard_check_pressed(ord("R")) || gamepad_button_check_pressed(0, gp_select)) { room_restart() }
if (keyboard_check_pressed(ord("Q"))) { room_goto(Stage_Selector) }