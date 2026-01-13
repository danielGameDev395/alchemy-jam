if (global.paused) { image_speed=0; exit; }
image_speed=1

if (x>room_width-room_width/4) { x+=xspd }
else { obj_roomControl.time_freezed=true }