index=0

boxes=layer_get_all_elements("Chips")

stages=array_length(boxes)-1

select=function(index) {
	switch (index) {
	    case 0: room_goto(Debug) break;
	    case 1: room_goto(Stage1) break;
	    //case 2: room_goto(Stage3) break;
	    default:  break;
	}
}