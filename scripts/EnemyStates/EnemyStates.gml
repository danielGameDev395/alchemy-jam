function enemyStateFree() {
	sprite_index=sprite_free
	
	x+=xspd
	
	// change state
	if (self.attack_condition() && can_attack==1) {
		can_attack=0; alarm_set(0, cooldown)
		image_index=0; state=enemyStateAttack
	}
}

function enemyStateAttack() {
	sprite_index=sprite_attack

	self.attack()
}