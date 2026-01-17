if (up_button()) { index-- }
if (down_button()) { index++ }

if (index<0) { index=array_length(options)-1 }
if (index>array_length(options)-1) { index=0 }

if (confirm_button()) { select(index) }