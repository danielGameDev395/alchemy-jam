// create the room's button
if (global.is_mobile) {
	switch (room) {
		case rm_mainMenu:
			up=virtual_key_add(64-32, 128-32, 64, 64, vk_up)
			down=virtual_key_add(64-32, 184-32, 64, 64, vk_down)
		
			confirm=virtual_key_add(436-32, 166-32, 64, 64, vk_enter)
			break;
		case rm_stageSelector:
			left=virtual_key_add(50-32, 246-32, 64, 64, vk_left)
			right=virtual_key_add(110-32, 246-32, 64, 64, vk_right)
		
			confirm=virtual_key_add(452-32, 238-32, 64, 64, vk_enter)
			house_esc=virtual_key_add(382-32, 238-32, 64, 64, vk_backspace)
			break;
		case rm_controls:
			house_esc=virtual_key_add(40-32, 36-32, 64, 64, vk_backspace)
			break;
		default:
			// sets the bomb's sprite scale and position
			bomb=layer_get_all_elements("Bomb")[0]
			layer_sprite_xscale(bomb, 2)
			layer_sprite_yscale(bomb, 2)
			layer_sprite_x(bomb, 28)
			layer_sprite_y(bomb, 28)
		
			left=virtual_key_add(40-32, 230-32, 64, 64, vk_left)
			right=virtual_key_add(100-32, 230-32, 64, 64, vk_right)	
		
			attack=virtual_key_add(470-39, 164-39, 78, 78, ord("K"))
			jump=virtual_key_add(392-39, 218-39, 78, 78, ord("J"))
		
			pause=virtual_key_add(476-32, 42-32, 64, 64, ord("P"))
			restart=virtual_key_add(70-32, 140-32, 64, 64, ord("R"))
			house_q=virtual_key_add(417-32, 140-32, 64, 64, ord("Q"))
			break;
	}
}