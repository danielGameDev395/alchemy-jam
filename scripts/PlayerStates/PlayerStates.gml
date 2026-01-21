function playerStateFree() {
	sprite_index=spr_playerRun
	
	#region Horizontal move
	move=right_control()-left_control()
	if (move!=0) { image_xscale=move }

	xspd=move*spd
	
	// collision with wall
	if (place_meeting(x+xspd, y, obj_wall)) {
		while (!place_meeting(x+sign(xspd), y, obj_wall)) { x+=sign(xspd) }
		xspd=0
	}
	
	// apply speed and limit X
	x+=xspd; x=clamp(x, abs(sprite_width/2), room_width-abs(sprite_width/2))
	#endregion
	
	#region Change state
	// Air
	if (jump_button()) { yspd=jump_spd; audio_play_sound(PlayerJump, 0, false); state=playerStateAir }
	if !(place_meeting(x, y+1, obj_solid)) { state=playerStateAir }
	// Attack
	if (attack_button()) { xspd=0; image_index=0; state=playerStateAttack }
	
	#endregion
}

function playerStateAir() {
	// add sprite falling*
	sprite_index=spr_playerJump
	
	#region Horizontal move
	move=right_control()-left_control()
	if (move!=0) { image_xscale=move }
	
	// move with lower speed
	xspd=move*(spd*0.8)
	
	x+=xspd; x=clamp(x, abs(sprite_width/2), room_width-abs(sprite_width/2))
	#endregion
	
	// apply gravity and move player vertically
	yspd+=GRAVITY; y+=yspd
	
	#region Change State
	// Free
	if (place_meeting(x, y+yspd, obj_solid)) {
		while !(place_meeting(x, y+sign(yspd), obj_solid)) { y+=sign(yspd) }
		yspd=0; xspd=0; state=playerStateFree
	}
	// Sliding
	if (place_meeting(x+image_xscale*spd, y, obj_wall)) { yspd=0; xspd=0; state=playerStateSliding }
	// Attack
	if (attack_button()) { xspd=0; yspd=0; state=playerStateAttackAir }
	#endregion
}

function playerStateAttack() {
	sprite_index=spr_playerAttack
	
	// change this value after definitive animation*
	if (image_index>2 && !instance_exists(obj_swordHitbox)) { instance_create_depth(x, y, depth-1, obj_swordHitbox) }
	
	// Back to free state
	if (image_index>image_number-1) { 
		if (instance_exists(obj_swordHitbox)) { instance_destroy(obj_swordHitbox) }
		image_index=0; state=playerStateFree
	}
}

function playerStateAttackAir() {
	sprite_index=spr_playerAttackAir
	
	yspd+=GRAVITY/2; y+=yspd
	
	if (!instance_exists(obj_swordHitbox)) { instance_create_depth(x, y, depth-1, obj_swordHitbox) }
	
	// change state
	if (place_meeting(x, y+yspd, obj_solid)) {
		while !(place_meeting(x, y+sign(yspd), obj_solid)) { y+=sign(yspd) }
		if (instance_exists(obj_swordHitbox)) { instance_destroy(obj_swordHitbox) }
		yspd=0; state=playerStateFree
	}
}

function playerStateSliding() {
	sprite_index=spr_playerSlide
	
	// follow the wall
	x=instance_nearest(x, y, obj_wall).x-sprite_width
	
	// gravity with friction
	yspd+=GRAVITY/5; y+=yspd
	
	#region Change state
	// Air
	if (jump_button()) { yspd=jump_spd; audio_play_sound(PlayerJump, 0, false); x-=sprite_width/2; state=playerStateAir }
	// Free
	if (place_meeting(x, y+yspd, obj_solid)) {
		while !(place_meeting(x, y+sign(yspd), obj_solid)) { y+=sign(yspd) }
		yspd=0; state=playerStateFree
	}
	if (x<5) { yspd=0; state=playerStateFree }
}
	
function playerStateDamage() {
	// add sprite*
	sprite_index=spr_playerRun
	
	if (instance_exists(obj_swordHitbox)) { instance_destroy(obj_swordHitbox) }
	
	yspd+=GRAVITY
	
	x+=xspd; y+=yspd
	
	x=clamp(x, abs(sprite_width/2), room_width-abs(sprite_width/2))
	
	if (place_meeting(x, y+1, obj_solid)) { dmg_dir=0; xspd=0; yspd=0; state=playerStateFree }
}

