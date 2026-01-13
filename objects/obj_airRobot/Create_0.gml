event_inherited();

// creates and holds the bomb
bomb=instance_create_depth(x+sprite_width/8, y+sprite_height/4, depth, obj_dynamite)

// creates arm's sprite
arm=layer_sprite_create("Assets_back", x, y, spr_airRobotArm)
layer_sprite_xscale(arm, -1)

// the bomb have the same speed
xspd=-4; bomb.xspd=xspd

attack_condition=function() {
	distance=abs(x-player.x)
	return (distance<10)
}

// change this function when have animation*
attack=function() {
	bomb.fall=true; bomb.xspd=0
	state=enemyStateFree
}