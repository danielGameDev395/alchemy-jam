if (global.paused) { image_speed=0; exit; }
image_speed=1

state()

// destroy if not in screen
if (x<0+sprite_width) { instance_destroy() }