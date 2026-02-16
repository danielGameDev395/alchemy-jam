#region Platform config
// set native config
#macro MOBILE false

#macro Windows:MOBILE false
#macro Mobile:MOBILE true

// check if is mobile on browser
function is_mobile_browser() {
	if (os_browser!=browser_not_a_browser) {
		if (os_type==os_android || os_type==os_ios) {
			return true
		}
		return false
	}
	return false
}

global.is_mobile=(MOBILE || is_mobile_browser())
#endregion

#region Window config
// set base resolution
#macro WIDTH 512
#macro HEIGHT 288

// scale the screen if not on mobile
function screen_resize() {
	if (global.is_mobile){
		display_set_gui_size(WIDTH, HEIGHT)
		return 1
	}
	else {
		var scale=floor(display_get_width()/WIDTH)

		window_set_size(WIDTH*scale, HEIGHT*scale)
		window_center()

		display_set_gui_size(WIDTH*scale, HEIGHT*scale)
	}
}
#endregion

// globals
global.paused=false
global.stages=[rm_stage1, rm_stage2, rm_stage3]
global.best_times=[0,0,0]

// macros
#macro GRAVITY 0.5
#macro DEADZONE 0.5