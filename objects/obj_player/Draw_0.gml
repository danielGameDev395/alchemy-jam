draw_self()

if (flash>0) {
	gpu_set_fog(true, c_white, 0, 0)

	// draws the hit flash
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, 1, 0, c_white, flash)

	gpu_set_fog(false, c_white, 0, 0)
}