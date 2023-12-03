/// @description Enemy

// Movement
hsp = move_speed * dir;
vsp += grav;

movement_collision();

//turn around
if (place_meeting(x + dir, y, obj_solid)) {
	dir = dir * -1;
}


