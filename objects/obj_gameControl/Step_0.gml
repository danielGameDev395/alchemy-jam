// resize the screen if size changed (fullscreen)
if (!global.is_mobile) {
	if (browser_width!=window_get_width() || browser_height!=window_get_height()) {
		screen_resize()
	}
}	

// debug
show_debug_message($"X: {mouse_x}. Y: {mouse_y}")

if (!MOBILE) { exit; }

if (keyboard_check_pressed(vk_control)) {
	show=!show
}

if (show) {
	//window_set_fullscreen(false)
	virtual_key_show(up)
	virtual_key_show(down)
	virtual_key_show(confirm)
	if (room==rm_stage1) {
		virtual_key_show(restart)
		virtual_key_show(attack)
		virtual_key_show(jump)
	}
}
else {
	//window_set_fullscreen(true)
	virtual_key_hide(up)
	virtual_key_hide(down)
	virtual_key_hide(confirm)
	if (room==rm_stage1) {
		virtual_key_hide(restart)
		virtual_key_hide(attack)
		virtual_key_hide(jump)
	}
}