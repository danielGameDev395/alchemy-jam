event_inherited();

if (global.paused) { exit; }

if (place_meeting(x, y+1, obj_solid)) { instance_destroy() }
else if (fall) { yspd+=GRAVITY }

x+=xspd; y+=yspd