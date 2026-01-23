// window config
#macro WIDTH 720
#macro HEIGHT 480

window_set_size(WIDTH, HEIGHT)
window_center()

surface_resize(application_surface, WIDTH, HEIGHT)
display_set_gui_size(WIDTH, HEIGHT)

// globals
global.paused=false
global.stages=[rm_stage1, rm_stage2, rm_stage3]

// macros
#macro GRAVITY 0.5
#macro DEADZONE 0.5