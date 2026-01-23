index=0

chips=layer_get_all_elements("Chips")

stages=array_length(chips)-1

select=function(index) {
	switch (index) {
	    case 0: room_goto(rm_stage1) break;
	    case 1: room_goto(rm_stage2) break;
	    case 2: room_goto(rm_stage3) break;
	    default:  break;
	}
}