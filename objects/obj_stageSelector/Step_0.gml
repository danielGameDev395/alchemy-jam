for (var i = 0; i<stages+1; i++) {
	// selected stage blends aqua
	if (index==i) { layer_sprite_blend(boxes[i], c_aqua) }
	else { layer_sprite_blend(boxes[i], c_white) }
	
	// blocked stages blends red
    if (i!=0 && global.best_times[i-1]==0) { layer_sprite_blend(boxes[i], c_red) }
}

// add blocked audio at else*
if (right_button()) { 
	if (index<stages && global.best_times[index]!=0) { index++ }
	else { /*audio_play_sound()*/ }
}

if (left_button()) {
	if (index>0) { index-- }
	else { /*audio_play_sound()*/ }
}

if (confirm_button()) { select(index) }