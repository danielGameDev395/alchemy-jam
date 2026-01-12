global.paused=!global.paused

// stops the ground and the bomb
if (global.paused) {
	layer_hspeed("Ground", 0)
	layer_sprite_speed(bomb, 0)
}
else {
	layer_hspeed("Ground", -2)
	layer_sprite_speed(bomb, 1)
}