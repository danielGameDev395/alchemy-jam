index=0
stages=3

boxes=layer_get_all_elements("Chips")

select=function(index) {
	switch (index) {
	    case 0: room_goto(Debug) break;
	    case 1: room_goto(Room1) break;
	    //case 2: room_goto() break;
	    //case 3: room_goto() break;
	    default:
	        break;
	}
}