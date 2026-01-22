if (global.paused) { image_speed=0; exit; }
image_speed=1

// hit flash return to 0
flash=lerp(flash, 0, 0.05)

state()