player=instance_nearest(x, y, obj_player)
xspd=-3
image_xscale=-1

sprite_free=sprite_index
state=enemyStateFree

sprite_attack=sprite_index
can_attack=1
cooldown=60
attack_condition=function() { }

dmg=1