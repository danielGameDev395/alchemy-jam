event_inherited();

cooldown=120

laser=noone

sprite_attack=spr_robotAttack

attack_condition=function() {
	distance=abs(x-player.x)
	return (distance<150)
}

attack=function() {
	// shoots at the animation end
	if (image_index>=image_number-1) { laser=instance_create_depth(x+sprite_width/4, y, depth, obj_laser) }
	
	// return to free after laser disappear
	if (instance_exists(laser)) {
		image_index=0
		if (laser.alarm[0]<=1) { state=enemyStateFree }
	}
}