// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function movement_collision() {
	//Horizonatal movment and collision
	if (place_meeting(x + hsp, y, obj_solid)) {
		while (!place_meeting(x + sign(hsp), y, obj_solid)) {
			x += sign(hsp);
		}
		hsp = 0;
	}
	x += hsp;
	
	//Vertical movement and collision
	if (place_meeting(x, y + vsp, obj_solid)) {
		while (!place_meeting(x, y + sign(vsp), obj_solid)) {
			y += sign(vsp);
		}
		vsp = 0;
	}
	y += vsp;
}