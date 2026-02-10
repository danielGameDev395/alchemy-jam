// window config
#macro WIDTH 512
#macro HEIGHT 288

function screen_resize() {
	var scale=floor(display_get_width()/WIDTH)

	window_set_size(WIDTH*scale, HEIGHT*scale)
	window_center()

	display_set_gui_size(WIDTH*scale, HEIGHT*scale)
}

screen_resize()

// globals
global.paused=false
global.stages=[rm_stage1, rm_stage2, rm_stage3]

// macros
#macro GRAVITY 0.5
#macro DEADZONE 0.5